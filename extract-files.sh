#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=j4corelte
export BOARD_COMMON=msm8917-common
export VENDOR=samsung

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
