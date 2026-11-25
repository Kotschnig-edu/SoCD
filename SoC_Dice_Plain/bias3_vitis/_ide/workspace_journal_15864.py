# 2026-11-25T16:44:04.260189500
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

