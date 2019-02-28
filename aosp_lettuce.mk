# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lettuce device
$(call inherit-product, device/yu/lettuce/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_USE_OLD_SOUND_PICKER := true
TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := OFFICIAL
$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := aosp_lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY49J YOG4PAS8A8 release-keys" \
    PRODUCT_NAME=YUPHORIA \
    TARGET_DEVICE=YUPHORIA

BUILD_FINGERPRINT := YU/YUPHORIA/YUPHORIA:5.1.1/LMY49J/YOG4PAS8A8:user/release-keys
