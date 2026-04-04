# 2026-04-04T15:27:05.801972700
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab3_MLP_optimization")

comp = client.get_component(name="baseline_blockedMM")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

