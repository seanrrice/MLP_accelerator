# 2026-04-04T16:06:02.205643900
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab3_MLP_optimization")

comp = client.get_component(name="baseline_blockedMM")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

