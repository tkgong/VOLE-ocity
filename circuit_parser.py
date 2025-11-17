#!/usr/bin/env python3
"""
Advanced Circuit Parser for Zero-Knowledge Proof Systems
Extracts input values from @private() and gate definitions from @mul/@add operations
Compatible with HLS testbench and defs.h structure
"""

import re
import sys
import argparse
import json
from pathlib import Path
from dataclasses import dataclass
from typing import List, Tuple, Dict, Optional
from enum import IntEnum

# ANSI color codes for terminal output
class Colors:
    HEADER = '\033[95m'
    BLUE = '\033[94m'
    CYAN = '\033[96m'
    GREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'

class GateType(IntEnum):
    XOR = 0
    AND = 1

@dataclass
class Gate:
    """Represents a gate in the circuit"""
    gate_type: GateType
    in1: int
    in2: int
    out: int
    
    def to_tuple(self) -> Tuple[int, int, int, int]:
        return (self.gate_type, self.in1, self.in2, self.out)
    
    def __str__(self) -> str:
        op = "AND" if self.gate_type == GateType.AND else "XOR"
        symbol = "&" if self.gate_type == GateType.AND else "^"
        return f"{op}: ${self.in1} {symbol} ${self.in2} -> ${self.out}"

class CircuitParser:
    """
    Parser for circuit files containing @private, @mul, and @add operations
    """
    
    # Regex patterns for different operations
    PATTERNS = {
        'private': re.compile(r'\$(\d+)\s*<-\s*@private\((\d+)\)'),
        'mul': re.compile(r'\$(\d+)\s*<-\s*@mul\([^:]*:\s*\$(\d+),\s*\$(\d+)\)'),
        'add': re.compile(r'\$(\d+)\s*<-\s*@add\([^:]*:\s*\$(\d+),\s*\$(\d+)\)')
    }
    
    def __init__(self, verbose: bool = False):
        self.verbose = verbose
        self.input_wire_map: Dict[int, int] = {}
        self.gates: List[Gate] = []
        self.all_wires: set = set()
        self.stats = {
            'lines_processed': 0,
            'lines_skipped': 0,
            'parse_errors': []
        }
    
    def parse_file(self, filepath: str) -> Tuple[List[int], List[Gate]]:
        """
        Parse a circuit file and extract inputs and gates
        
        Args:
            filepath: Path to the circuit file
            
        Returns:
            Tuple of (input_values, gates)
        """
        path = Path(filepath)
        if not path.exists():
            raise FileNotFoundError(f"Circuit file not found: {filepath}")
        
        print(f"{Colors.CYAN}Parsing circuit file: {filepath}{Colors.ENDC}")
        
        with open(path, 'r') as f:
            for line_num, line in enumerate(f, 1):
                self.stats['lines_processed'] += 1
                line = line.strip()
                
                if not line or line.startswith('#'):
                    self.stats['lines_skipped'] += 1
                    continue
                
                self._parse_line(line, line_num)
        
        # Create ordered list of input values
        input_values = [self.input_wire_map[wire_id] 
                       for wire_id in sorted(self.input_wire_map.keys())]
        
        return input_values, self.gates
    
    def _parse_line(self, line: str, line_num: int) -> None:
        """Parse a single line of the circuit file"""
        
        # Try to match @private
        if '@private' in line:
            match = self.PATTERNS['private'].match(line)
            if match:
                wire_id = int(match.group(1))
                value = int(match.group(2))
                self.input_wire_map[wire_id] = value
                self.all_wires.add(wire_id)
                
                if self.verbose:
                    print(f"  Line {line_num}: Private wire ${wire_id} = {value}")
                return
        
        # Try to match @mul (AND gate)
        elif '@mul' in line:
            match = self.PATTERNS['mul'].match(line)
            if match:
                out = int(match.group(1))
                in1 = int(match.group(2))
                in2 = int(match.group(3))
                gate = Gate(GateType.AND, in1, in2, out)
                self.gates.append(gate)
                self.all_wires.update([in1, in2, out])
                
                if self.verbose:
                    print(f"  Line {line_num}: {gate}")
                return
        
        # Try to match @add (XOR gate)
        elif '@add' in line:
            match = self.PATTERNS['add'].match(line)
            if match:
                out = int(match.group(1))
                in1 = int(match.group(2))
                in2 = int(match.group(3))
                gate = Gate(GateType.XOR, in1, in2, out)
                self.gates.append(gate)
                self.all_wires.update([in1, in2, out])
                
                if self.verbose:
                    print(f"  Line {line_num}: {gate}")
                return
        
        # If we got here, line wasn't parsed successfully
        if self.verbose:
            self.stats['parse_errors'].append((line_num, line[:50]))

class CircuitWriter:
    """Handles writing circuit data to various output formats"""
    
    @staticmethod
    def write_inputs(input_values: List[int], filepath: str) -> None:
        """Write input values to file (one per line)"""
        with open(filepath, 'w') as f:
            for value in input_values:
                f.write(f"{value}\n")
    
    @staticmethod
    def write_gates(gates: List[Gate], filepath: str) -> None:
        """Write gates in format: is_and in1 in2 out"""
        with open(filepath, 'w') as f:
            for gate in gates:
                f.write(f"{gate.gate_type} {gate.in1} {gate.in2} {gate.out}\n")
    
    @staticmethod
    def write_cpp(input_values: List[int], gates: List[Gate], filepath: str) -> None:
        """Write C++ arrays for inputs and gates"""
        with open(filepath, 'w') as f:
            # Header
            f.write("// Auto-generated circuit data\n")
            f.write("#include \"defs.h\"\n\n")
            
            # Input array
            f.write(f"// Circuit inputs: {len(input_values)} values\n")
            f.write("const int circuit_inputs[] = {\n")
            
            # Write inputs in rows of 10
            for i in range(0, len(input_values), 10):
                f.write("    ")
                chunk = input_values[i:i+10]
                f.write(", ".join(map(str, chunk)))
                if i + 10 < len(input_values):
                    f.write(",")
                f.write("\n")
            f.write("};\n\n")
            
            # Gates array
            f.write(f"// Circuit gates: {len(gates)} gates\n")
            and_count = sum(1 for g in gates if g.gate_type == GateType.AND)
            xor_count = len(gates) - and_count
            f.write(f"// AND gates: {and_count:,}, XOR gates: {xor_count:,}\n")
            f.write("const GateInfo circuit_gates[] = {\n")
            
            for i, gate in enumerate(gates):
                op = "AND" if gate.gate_type == GateType.AND else "XOR"
                f.write(f"    {{{gate.gate_type}, {gate.in1}, {gate.in2}, {gate.out}}}")
                if i < len(gates) - 1:
                    f.write(",")
                f.write(f"  // {op}\n")
            f.write("};\n\n")
            
            # Constants
            f.write(f"const int NUM_CIRCUIT_INPUTS = {len(input_values)};\n")
            f.write(f"const int NUM_CIRCUIT_GATES = {len(gates)};\n")
            f.write(f"const int NUM_AND_GATES = {and_count};\n")
            f.write(f"const int NUM_XOR_GATES = {xor_count};\n")
    
    @staticmethod
    def write_json(input_values: List[int], gates: List[Gate], filepath: str) -> None:
        """Write circuit data as JSON for easy parsing"""
        data = {
            'inputs': input_values,
            'gates': [
                {
                    'type': 'AND' if g.gate_type == GateType.AND else 'XOR',
                    'is_and': int(g.gate_type),
                    'in1': g.in1,
                    'in2': g.in2,
                    'out': g.out
                }
                for g in gates
            ],
            'statistics': {
                'num_inputs': len(input_values),
                'num_gates': len(gates),
                'num_and': sum(1 for g in gates if g.gate_type == GateType.AND),
                'num_xor': sum(1 for g in gates if g.gate_type == GateType.XOR),
            }
        }
        
        with open(filepath, 'w') as f:
            json.dump(data, f, indent=2)

def print_statistics(input_values: List[int], gates: List[Gate], expected_inputs: int = 769, expected_gates: int = 135073):
    """Print detailed statistics about the parsed circuit"""
    
    and_count = sum(1 for g in gates if g.gate_type == GateType.AND)
    xor_count = len(gates) - and_count
    
    print(f"\n{Colors.BOLD}═══════════════════════════════════════════{Colors.ENDC}")
    print(f"{Colors.BOLD}       CIRCUIT PARSING RESULTS{Colors.ENDC}")
    print(f"{Colors.BOLD}═══════════════════════════════════════════{Colors.ENDC}")
    
    print(f"\n{Colors.CYAN}📊 Statistics:{Colors.ENDC}")
    print(f"  Input values:  {len(input_values):>7,}")
    print(f"  AND gates:     {and_count:>7,}")
    print(f"  XOR gates:     {xor_count:>7,}")
    print(f"  Total gates:   {len(gates):>7,}")
    
    # Check against expected values
    print(f"\n{Colors.CYAN}✅ Validation (vs defs.h):{Colors.ENDC}")
    
    def check_value(name: str, actual: int, expected: int) -> None:
        if actual == expected:
            print(f"  {name:15} {Colors.GREEN}✓ MATCH{Colors.ENDC} ({actual:,})")
        else:
            diff = actual - expected
            print(f"  {name:15} {Colors.FAIL}✗ MISMATCH{Colors.ENDC} (actual: {actual:,}, diff: {diff:+,})")
    
    check_value("Input wires:", len(input_values), expected_inputs)
    check_value("Total gates:", len(gates), expected_gates)
    
    # Show samples
    if input_values:
        print(f"\n{Colors.CYAN}📝 Sample inputs (first 10):{Colors.ENDC}")
        for i, val in enumerate(input_values[:10]):
            print(f"  Wire ${i}: {val}")
    
    if gates:
        print(f"\n{Colors.CYAN}📝 Sample gates (first 5):{Colors.ENDC}")
        for i, gate in enumerate(gates[:5]):
            print(f"  Gate {i}: {gate}")

def main():
    parser = argparse.ArgumentParser(
        description="Parse circuit files for zero-knowledge proof systems",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s circuit.txt
  %(prog)s circuit.txt -o my_circuit
  %(prog)s circuit.txt --cpp --json --verbose
        """
    )
    
    parser.add_argument('circuit_file', help='Path to circuit file')
    parser.add_argument('-o', '--output', default='circuit', 
                       help='Output file prefix (default: circuit)')
    parser.add_argument('--cpp', action='store_true',
                       help='Generate C++ output file')
    parser.add_argument('--json', action='store_true',
                       help='Generate JSON output file')
    parser.add_argument('--no-txt', action='store_true',
                       help='Skip generating text output files')
    parser.add_argument('-v', '--verbose', action='store_true',
                       help='Enable verbose output')
    parser.add_argument('--expected-inputs', type=int, default=769,
                       help='Expected number of inputs for validation')
    parser.add_argument('--expected-gates', type=int, default=135073,
                       help='Expected number of gates for validation')
    
    args = parser.parse_args()
    
    try:
        # Parse the circuit
        circuit_parser = CircuitParser(verbose=args.verbose)
        input_values, gates = circuit_parser.parse_file(args.circuit_file)
        
        # Print statistics
        print_statistics(input_values, gates, args.expected_inputs, args.expected_gates)
        
        # Write outputs
        writer = CircuitWriter()
        files_written = []
        
        if not args.no_txt:
            inputs_file = f"{args.output}_inputs.txt"
            gates_file = f"{args.output}_gates.txt"
            writer.write_inputs(input_values, inputs_file)
            writer.write_gates(gates, gates_file)
            files_written.extend([inputs_file, gates_file])
        
        if args.cpp:
            cpp_file = f"{args.output}.cpp"
            writer.write_cpp(input_values, gates, cpp_file)
            files_written.append(cpp_file)
        
        if args.json:
            json_file = f"{args.output}.json"
            writer.write_json(input_values, gates, json_file)
            files_written.append(json_file)
        
        if files_written:
            print(f"\n{Colors.GREEN}📄 Output files generated:{Colors.ENDC}")
            for f in files_written:
                size = Path(f).stat().st_size
                print(f"  ✓ {f} ({size:,} bytes)")
        
        # Summary
        print(f"\n{Colors.GREEN}✅ Parsing completed successfully!{Colors.ENDC}")
        
        # If verbose, show parsing stats
        if args.verbose and circuit_parser.stats['parse_errors']:
            print(f"\n{Colors.WARNING}⚠️  Lines that couldn't be parsed:{Colors.ENDC}")
            for line_num, line_start in circuit_parser.stats['parse_errors'][:5]:
                print(f"  Line {line_num}: {line_start}...")
        
    except FileNotFoundError as e:
        print(f"{Colors.FAIL}❌ Error: {e}{Colors.ENDC}")
        sys.exit(1)
    except Exception as e:
        print(f"{Colors.FAIL}❌ Unexpected error: {e}{Colors.ENDC}")
        import traceback
        if args.verbose:
            traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()