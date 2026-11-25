# 2026-11-25T16:48:58.079726800
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../basys3_top.xsa")

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

