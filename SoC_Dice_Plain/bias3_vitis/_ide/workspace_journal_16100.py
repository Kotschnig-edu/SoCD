# 2026-11-11T12:52:54.781681200
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.create_platform_component(name = "SoC_DUT",hw_design = "$COMPONENT_LOCATION/../../basys3_top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

comp = client.create_app_component(name="SoC_app",platform = "$COMPONENT_LOCATION/../SoC_DUT/export/SoC_DUT/SoC_DUT.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../basys3_top.xsa")

vitis.dispose()

