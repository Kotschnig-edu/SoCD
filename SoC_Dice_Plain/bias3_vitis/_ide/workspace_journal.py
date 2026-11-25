# 2026-11-25T14:49:23.192226900
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

platform = client.get_component(name="SoC_DUT")
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

comp = client.get_component(name="SoC_app")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["app.c"])

status = platform.build()

comp = client.get_component(name="SoC_app")
comp.build()

