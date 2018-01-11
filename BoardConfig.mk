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

# Force 32-bit
FORCE_32_BIT := true

# Inherit from mt6735-common
include device/cyanogen/mt6735-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/grandppltedx

# CFLAGS
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Odex
WITH_DEXPREOPT := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737t
#MT6737T
# Images


# Platform
#ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6737t
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true
TARGET_BOARD_PLATFORM_GPU := mali-T720mp2
MTK_GPU_VERSION := mali midgard m7p0

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_MEDIA_PROFILES := true


TARGET_PROVIDES_LIBLIGHT := true

# Omx
TARGET_OMX_LEGACY_RESCALING := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

#mali-T720
#r7p0
#TARGET_PREFER_32_BIT := true
#TARGET_SUPPORTS_32_BIT_APPS := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

#TARGET_ARCH := arm64
#TARGET_ARCH_VARIANT := armv8-a
#TARGET_CPU_ABI := arm64-v8a
#TARGET_CPU_ABI2 := 
#TARGET_CPU_VARIANT := cortex-a53
#TARGET_CPU_SMP := true

TARGET_2ND_CPU_ABI := 
TARGET_2ND_CPU_ABI2 := 
TARGET_2ND_ARCH := 
TARGET_2ND_ARCH_VARIANT := 
TARGET_2ND_CPU_VARIANT := 

#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_VARIANT := cortex-a53
#TARGET_CPU_CORTEX_A53 := true
#TARGET_BOARD_SUFFIX := _64
#TARGET_USES_64_BIT_BINDER := true


#Partition & Block
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229614080
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3900702720
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229614080
#0xC0800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3900702720
#0xE8800000
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 4096
#131072

#Kernel
#TARGET_KERNEL_ARCH := arm
#TARGET_KERNEL_HEADER_ARCH := arm
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
#androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x3fffc000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET = 0x04004000
BOARD_TAGS_OFFSET = 0xE004000
BOARD_KERNEL_OFFSET = 0x00008000
#BOARD_KERNEL_BASE = 0x40000000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_RAMDISK_OFFSET = 0x04000000
#BOARD_TAGS_OFFSET = 0xE000000
#BOARD_KERNEL_OFFSET = 0x00008000

BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --pagesize 2048 --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --dt $(LOCAL_PATH)/dt.img --board SRPPI01A000KU

#--base 0x3fffc000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04004000 --tags_offset 0x0e004000 --board SRPPI01A000KU
# --dt $(LOCAL_PATH)/dt.img
#1480056755
#MTK_APPENDED_DTB_SUPPORT := yes

#FS
#BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#TARGET_CACHEIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
#BOARD_SUPPRESS_SECURE_ERASE := true
#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/grandppltedx/dt/bootimg.mk
#TARGET_PREBUILT_DTB := device/samsung/grandppltedx/dt.img
#TARGET_SYSTEM_PROP := device/samsung/grandppltedx/system.prop
#TARGET_RECOVERY_FSTAB := device/samsung/grandppltedx/recovery.fstab

#Display
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
#BOARD_HAS_NO_SELECT_BUTTON := true

# Seccomp filter
#BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

#boot.img
#BOARD_RAMDISK_OFFSET := 04004000
#BOARD_SECOND_OFFSET := 00f04000
#BOARD_TAGS_OFFSET := 0e004000
#BOARD_PAGE_SIZE := 2048
#BOARD_SECOND_SIZE := 0
#BOARD_DT_SIZE := 485376


# Kernel
#TARGET_KMODULES := false
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Disable memcpy opt (for audio libraries)
#TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
#BOARD_EGL_CFG :=  device/samsung/grandppltedx/configs/egl.cfg
#USE_OPENGL_RENDERER := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
#EXTENDED_FONT_FOOTPRINT := true

# init
#TARGET_PROVIDES_INIT_RC := true

# Vold
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gagdet/lun%d/file

# Bootanimation
#TARGET_BOOTANIMATION_PRELOAD := true

# MTK audio
#BOARD_USES_MTK_AUDIO := true

# Camera
#USE_CAMERA_STUB := true

# Enable Minikin text layout engine (will be the default soon)
#USE_MINIKIN := true

# Use dlmalloc instead of jemalloc for mallocs
#MALLOC_IMPL := dlmalloc

# Bluetooth
#BOARD_HAVE_BLUETOOTH := true
#BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# GPS
#BOARD_GPS_LIBRARIES := true
#BOARD_MEDIATEK_USES_GPS := true

# CM hardware
#BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# LigtHAL
#TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
#BOARD_USES_MTK_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# SELinux
#BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# Support of MTK NFC
#MTK_NFC_SUPPORT := yes

# Charger
#BOARD_CHARGER_SHOW_PERCENTAGE := true


#Sub_Zero2



#TARGET_BOARD_INFO_FILE := device/samsung/grandppltedx/board-info.txt

# Device specific headers
#TARGET_SPECIFIC_HEADER_PATH += device/samsung/i9100/include

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/grandppltedx/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/grandppltedx
TARGET_KERNEL_CONFIG := mt6737t-grandppltedx-lineageos_defconfig
#mt6737t-grandppltedx-lineageos_defconfig
#mt6737t-grandpplte_defconfig
#len6737t_36_m0_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := grandpplte,grandppltedx,SM-G532G

# Recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# Inherit from mt6735-common
#$(call inherit-product, device/cyanogen/mt6735-common/mt6735.mk)

# Use the non-open-source parts, if they're present
#$(call inherit-product-if-exists, vendor/samsung/grandppltedx/grandppltedx-vendor.mk)

#-include vendor/samsung/grandppltedx/BoardConfigVendor.mk
