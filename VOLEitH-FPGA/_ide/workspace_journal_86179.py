# 2025-10-31T16:25:55.466786
import vitis

client = vitis.create_client()
client.set_workspace(path="VOLEitH-FPGA")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

