#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mdh50lm device
$(call inherit-product, device/lge/mdh50lm/device.mk)

PRODUCT_DEVICE := mdh50lm
PRODUCT_NAME := twrp_mdh50lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-Q730
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mdh50lm-user 10 QKQ1.200216.002 2035505369cf0 release-keys"

BUILD_FINGERPRINT := lge/mdh50lm/mdh50lm:10/QKQ1.200216.002/2035505369cf0:user/release-keys
