#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dm2q device
$(call inherit-product, device/samsung/dm2q/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
SUSHI_BOOTANIMATION  := 1080

PRODUCT_DEVICE := dm2q
PRODUCT_NAME := lineage_dm2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S916B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm2qxxx-user 13 TP1A.220624.014 S916BXXU3AWH3 release-keys"

BUILD_FINGERPRINT := samsung/dm2qxxx/dm2q:13/TP1A.220624.014/S916BXXU3AWH3:user/release-keys
