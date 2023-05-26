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

# Kernel
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CONFIG := j4corelte_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_VENDORIMAGE_PARTITION_SIZE := 260046848

# Inherit from the proprietary version
-include vendor/samsung/j4corelte/BoardConfigVendor.mk
