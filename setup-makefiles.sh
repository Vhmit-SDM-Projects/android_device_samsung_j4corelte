#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=j4corelte
export BOARD_COMMON=msm8917-common
export VENDOR=samsung

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
