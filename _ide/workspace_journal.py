# 2026-04-08T09:59:09.534578800
import vitis

client = vitis.create_client()
client.set_workspace(path="Lab3_MLP_optimization")

vitis.dispose()

vitis.dispose()

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

