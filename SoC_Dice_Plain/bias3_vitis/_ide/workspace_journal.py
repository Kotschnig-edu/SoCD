# 2026-11-11T13:37:36.999593200
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

