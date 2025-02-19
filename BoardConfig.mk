#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Wifi
WIFI_DRIVER_MODULE_PATH :=

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LINKER_NON_PIE_EXECUTABLES_HEADER_DIR := device/samsung/n7100/include

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
BOARD_RIL_CLASS := ../../../device/samsung/n7100/ril
TARGET_SPECIFIC_HEADER_PATH += device/samsung/n7100/include
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# TWRP
TW_THEME := portrait_mdpi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7100/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/kona
TARGET_KERNEL_CONFIG := lineageos_n7100_defconfig

# Power HAL
TARGET_POWERHAL_VARIANT := samsung

# assert
TARGET_OTA_ASSERT_DEVICE := t03g,n7100,GT-N7100

# inherit from the proprietary version
-include vendor/samsung/n7100/BoardConfigVendor.mk

# External apps on SD
#TARGET_EXTERNAL_APPS = sdcard1

# Camera Hacks
BOARD_GLOBAL_CFLAGS += -DMETADATA_CAMERA_SOURCE
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 1048576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/n7100/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# Compatibility with pre-kitkat Sensor HALs
# SENSORS_NEED_SETRATE_ON_ENABLE := true

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/n7100/selinux
