#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8Pro-user 13 RKQ1.211119.001 Q.1870b9f-4227_f18b release-keys" \
    BuildFingerprint=OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.1870b9f-4227_f18b:user/release-keys \
    DeviceName=OnePlus8Pro \
    DeviceProduct=OnePlus8Pro \
    SystemDevice=OnePlus8Pro \
    SystemName=OnePlus8Pro

# RisingOS Flags
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_PREBUILT_GOOGLE_CAMERA := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# Inherit RisingOS configurations.
RISING_MAINTAINER = Lord Itachi

# Add Official Stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Qualcomm Snapdragon 865" \
    RisingMaintainer="Lord Itachi"
