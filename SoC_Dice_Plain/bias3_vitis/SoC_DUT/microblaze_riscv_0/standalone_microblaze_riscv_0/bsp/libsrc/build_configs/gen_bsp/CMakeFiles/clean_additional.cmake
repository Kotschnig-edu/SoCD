# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\SoCD\\SoC_Dice_Plain\\bias3_vitis\\SoC_DUT\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\sleep.h"
  "C:\\SoCD\\SoC_Dice_Plain\\bias3_vitis\\SoC_DUT\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xiltimer.h"
  "C:\\SoCD\\SoC_Dice_Plain\\bias3_vitis\\SoC_DUT\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\include\\xtimer_config.h"
  "C:\\SoCD\\SoC_Dice_Plain\\bias3_vitis\\SoC_DUT\\microblaze_riscv_0\\standalone_microblaze_riscv_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
