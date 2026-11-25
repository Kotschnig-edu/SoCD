# 2026-11-25T13:08:09.675547400
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
status = platform.build()

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

comp = client.get_component(name="SoC_app")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["app.c"])

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../basys3_top.xsa")

vitis.dispose()

