# 2026-11-25T13:06:56.682493300
import vitis

client = vitis.create_client()
client.set_workspace(path="bias3_vitis")

vitis.dispose()

