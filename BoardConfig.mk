#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j4corelte

# Inherit from common msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := j4corelte, j4coreltejx

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27

# DEX
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CONFIG := j4corelte_defconfig

# Low Memory Devices
MALLOC_SVELTE := true
TARGET_HAS_LOW_RAM := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_VENDORIMAGE_PARTITION_SIZE := 260046848

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libsensorndkbridge.so|libbase_shim.so 

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Inherit from the proprietary version
-include vendor/samsung/j4corelte/BoardConfigVendor.mk
