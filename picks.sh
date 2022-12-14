#!/bin/bash

# Abort early on error
set -eE

## Project: LineageOS/android_frameworks_base

./vendor/lineage/build/tools/repopick.py 320714 # SystemUI: add burnIn protection
./vendor/lineage/build/tools/repopick.py 322825 # Add CHANNEL_MODE_DUAL_CHANNEL constant
./vendor/lineage/build/tools/repopick.py 322826 # Add Dual Channel into Bluetooth Audio Channel Mode developer options menu
./vendor/lineage/build/tools/repopick.py 322827 # Allow SBC as HD audio codec in Bluetooth device configuration
./vendor/lineage/build/tools/repopick.py 322828 # Explicitly make SBC Dual Channel an optional (HD) codec
./vendor/lineage/build/tools/repopick.py 326692 # Skip screen on animation when wake and unlock via biometrics
./vendor/lineage/build/tools/repopick.py 327687 # biometrics: Allow to disable haptic feedback on success authentication

## Project: LineageOS/android_lineage-sdk

./vendor/lineage/build/tools/repopick.py 327684 # lineage: res: Introduce config to disable biometrics success haptic feedback
./vendor/lineage/build/tools/repopick.py 327685 # lineage-sdk: Add preference keys for biometrics success haptic feedback

## Project: LineageOS/android_packages_apps_Bluetooth

./vendor/lineage/build/tools/repopick.py 322838 # SBC Dual Channel (SBC HD Audio) support

## Project: LineageOS/android_packages_apps_Settings

./vendor/lineage/build/tools/repopick.py 322833 # Add Dual Channel into Bluetooth Audio Channel Mode developer options menu
#./vendor/lineage/build/tools/repopick.py 327686 # Settings: Add biometrics success haptic feedback preference

## Project: LineageOS/android_packages_apps_Trebuchet

./vendor/lineage/build/tools/repopick.py 317967 # Enable crossfade when changing theme
./vendor/lineage/build/tools/repopick.py 317969 # Expose themed icon setting in ThemePicker
./vendor/lineage/build/tools/repopick.py 326714 # NavbarButtonsViewController: Support navbar layout inversion
./vendor/lineage/build/tools/repopick.py 329276 # Trebuchet: Refresh app icons on colors changed

## Project: LineageOS/android_packages_modules_Permission

./vendor/lineage/build/tools/repopick.py 317973 # PermissionController: Show up to 7 days of permission usage history

## Project: LineageOS/android_packages_modules_adb

./vendor/lineage/build/tools/repopick.py 326385 -f # adb: Bring back support for legacy FunctionFS

## Project: LineageOS/android_system_bt

./vendor/lineage/build/tools/repopick.py 322834 # Increase maximum Bluetooth SBC codec bitrate for SBC HD
./vendor/lineage/build/tools/repopick.py 322835 # Explicit SBC Dual Channel (SBC HD) support
./vendor/lineage/build/tools/repopick.py 322836 # Allow using alternative (higher) SBC HD bitrates with a property

## Project: LineageOS/android_vendor_lineage

#./vendor/lineage/build/tools/repopick.py 317982 # device_config: Keep up to 7 days of permission usage history
./vendor/lineage/build/tools/repopick.py 328958 # apns: add We

