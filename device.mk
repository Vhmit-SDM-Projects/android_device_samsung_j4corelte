#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_PACKAGES += \
    GCamGo

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

# DEX
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Settings \
    SystemUI \
    TrebuchetQuickStep

# Disable Scudo outside of eng builds to save RAM.
ifneq (,$(filter eng, $(TARGET_BUILD_VARIANT)))
  PRODUCT_DISABLE_SCUDO := true
endif

# Do not generate libartd.
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Do not spin up a separate process for the network stack on go devices, use an in-process APK.
PRODUCT_PACKAGES += InProcessNetworkStack
PRODUCT_PACKAGES += CellBroadcastAppPlatform
PRODUCT_PACKAGES += CellBroadcastServiceModulePlatform
PRODUCT_PACKAGES += com.android.tethering.inprocess

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Shims
PRODUCT_PACKAGES += \
    libbase_shim

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/j4corelte

# Inherit vendor
$(call inherit-product, vendor/samsung/j4corelte/j4corelte-vendor.mk)
