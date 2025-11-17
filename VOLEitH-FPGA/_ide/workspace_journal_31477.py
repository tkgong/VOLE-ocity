# 2025-10-30T19:50:23.767742
import vitis

client = vitis.create_client()
client.set_workspace(path="VOLEitH-FPGA")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

