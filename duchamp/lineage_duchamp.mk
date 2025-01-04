#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Matrixx
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := LUXURED
WITH_GMS := false

# Extra Matrixx Stuff
MATRIXX_CHIPSET := DIMENSITY-8300U
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1220x2712
BUILD_GOOGLE_CONTACTS := false
BUILD_GOOGLE_DIALER := false
BUILD_GOOGLE_MESSAGE := false


# Device identifier
PRODUCT_NAME := lineage_duchamp
PRODUCT_DEVICE := duchamp
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_SYSTEM_NAME := duchamp_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="duchamp_global-user 14 UP1A.230905.011 V816.0.12.0.UNLMIXM release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/duchamp_global/duchamp:14/UP1A.230905.011/V816.0.12.0.UNLMIXM:user/release-keys
