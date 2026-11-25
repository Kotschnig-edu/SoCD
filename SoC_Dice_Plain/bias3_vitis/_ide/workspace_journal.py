# 2026-11-25T10:51:07.311990900
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

