# 2026-11-25T13:04:33.970054
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../basys3_top.xsa")

