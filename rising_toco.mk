#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from toco device
$(call inherit-product, device/xiaomi/toco/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/toco-miuicamera/products/miuicamera.mk)

# Battery
RISING_BATTERY := 5260mAh

# Chipset
RISING_CHIPSET := SDM730G

# Display
RISING_DISPLAY := 1080×2340

# Maintainer
RISING_MAINTAINER := DennisMurimi

# RAM
RISING_RAM := 6GB

# Storage
RISING_STORAGE := 128GB

# GApps
WITH_GMS := true

# Blur support
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# GMS build flags
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true

# Don't build AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# NGA
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true

# Enable kernel inline building
INLINE_KERNEL_BUILDING := true

PRODUCT_NAME := rising_toco
PRODUCT_DEVICE := toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 12 RKQ1.210614.002 V13.0.4.0.SFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:12/RKQ1.210614.002/V13.0.4.0.SFNMIXM:user/release-keys
