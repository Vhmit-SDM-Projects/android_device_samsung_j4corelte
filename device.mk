#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/j4corelte

# Inherit vendor
$(call inherit-product, vendor/samsung/j4corelte/j4corelte-vendor.mk)
