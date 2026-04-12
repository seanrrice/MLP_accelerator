# 2026-04-11T16:29:58.114278500
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab3_MLP_optimization")

comp = client.get_component(name="baseline_blockedMM")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

