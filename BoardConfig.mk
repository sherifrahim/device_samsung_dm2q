#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/samsung/sm8550-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/dm2q

#Kernel
#BOARD_PREBUILT_DTBOIMAGE := device/samsung/dm1q-kernel/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb

# Assert
TARGET_OTA_ASSERT_DEVICE := dm2q

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel Modules
BOARD_SYSTEM_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/modules.load.system_dlkm))
BOARD_SYSTEM_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.system_dlkm))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor_boot))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist.vendor_boot
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOARD_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery $(DEVICE_PATH)/modules.load.vendor_ramdisk))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

TARGET_KERNEL_EXT_MODULES := \
  qcom/opensource/mmrm-driver \
  qcom/opensource/mm-drivers/hw_fence \
  qcom/opensource/mm-drivers/msm_ext_display \
  qcom/opensource/mm-drivers/sync_fence \
  qcom/opensource/audio-kernel \
  qcom/opensource/camera-kernel \
  qcom/opensource/dataipa/drivers/platform/msm \
  qcom/opensource/datarmnet/core \
  qcom/opensource/datarmnet-ext/aps \
  qcom/opensource/datarmnet-ext/offload \
  qcom/opensource/datarmnet-ext/shs \
  qcom/opensource/datarmnet-ext/perf \
  qcom/opensource/datarmnet-ext/perf_tether \
  qcom/opensource/datarmnet-ext/sch \
  qcom/opensource/datarmnet-ext/shs \
  qcom/opensource/datarmnet-ext/wlan \
  qcom/opensource/securemsm-kernel \
  qcom/opensource/display-drivers/msm \
  qcom/opensource/eva-kernel \
  qcom/opensource/video-driver \
  qcom/opensource/graphics-kernel \
  qcom/opensource/wlan/platform \
  qcom/opensource/wlan/qcacld-3.0/.kiwi_v2 \
  qcom/opensource/bt-kernel \
  qcom/opensource/touch-drivers
