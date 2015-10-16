#
# Copyright (C) 2015 The CyanogenMod Project
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

# inherit from common g3
-include device/lge/g3-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := g3,d851

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/d851/bluetooth/vnd_g3.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/d851/bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true


# Kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CONFIG := d851_defconfig

# Kernel & ToolChains
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-6.0
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-gnueabi-4.9/bin/arm-eabi-
# Rom ToolChains
TARGET_ROM_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.9
#TARGET_GCC_VERSION := 4.8
#TARGET_TOOLS_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
# RR Config Flags
#TARGET_TC_ROM := SM-4.8
#TARGET_TC_KERNEL := SM-4.9
#TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2692743168		# 2568M Or 2.51G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27325360128	# 26059.49M or 25.45G
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/d851/rootdir/etc/fstab.g3

# NFC
BOARD_NFC_CHIPSET := pn547

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/lge/d851/BoardConfigVendor.mk

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Edited for TWRP Recovery
DEVICE_RESOLUTION := 1440x2560
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_INCLUDE_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.175/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
# TW_NO_SCREEN_TIMEOUT := false

# MultiROM
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/lge/d851/multirom/mr_init_devices.c
MR_RD_ADDR := 0x2200000
MR_DPI := xhdpi
MR_DPI_MUL := 1.5
MR_FSTAB := device/lge/d851/multirom/twrp.fstab
MR_KEXEC_MEM_MIN := 0x0ff00000
MR_KEXEC_DTB := true
MR_USE_MROM_FSTAB := true
MR_DPI_FONT := 420
MR_DEFAULT_BRIGHTNESS := 80
#MR_CONTINUOUS_FB_UPDATE := true

#MultiRom Hooks, So that we can run stock roms as secondary
MR_DEVICE_HOOKS := device/lge/d851/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

