#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5 \
    android.hardware.camera.provider@2.5-impl \
    android.hardware.camera.provider@2.5-service \
    android.hardware.camera.provider@2.6 \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.device@3.4 \
    android.hardware.camera.device@3.5 \
    vendor.qti.hardware.camera.device@1.0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/L08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/L08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/P08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/P08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/Q05QL_s5k5e9yx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q05QL_s5k5e9yx_module_info.xml \
    $(LOCAL_PATH)/camera/Q08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/camera/s5k4h5yc_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h5yc_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k5e3yx_f2_2_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e3yx_f2_2_chromatix.xml \
    $(LOCAL_PATH)/camera/s5k5e9yx_q05ql_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_q05ql_chromatix.xml \
    $(LOCAL_PATH)/camera/sdm450_camera_j4corelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j4corelte.xml

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/j4corelte

# Inherit vendor
$(call inherit-product, vendor/samsung/j4corelte/j4corelte-vendor.mk)
