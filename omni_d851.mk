#PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
#
#$(call inherit-product, device/lge/d851/full_d851.mk)
#
# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)
#
# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Copy needed files to make everything work for recovery
PRODUCT_COPY_FILES += \
#    device/lge/d851/multirom/kernel:kernel \
    device/lge/d851/multirom/img_info:img_info \
    device/lge/d851/multirom/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	device/lge/d851/multirom/sign:recovery/root/res/sign

PRODUCT_COPY_FILES += device/lge/d851/rootdir/etc/fstab.g3:recovery/root/fstab.g3
PRODUCT_COPY_FILES += device/lge/d851/multirom/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_NAME := omni_d851
PRODUCT_DEVICE := d851
PRODUCT_BRAND := LG
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := LG

# Kernel inline build
#TARGET_KERNEL_CONFIG := d851_defconfig
#TARGET_VARIANT_CONFIG := d851_defconfig
#TARGET_SELINUX_CONFIG := d851_defconfig



PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g3" PRODUCT_NAME="g3_tmo_us" BUILD_FINGERPRINT="lge/g3_tmo_us/g3:4.4.2/KVT49L.D85110c/D85110c.1403267110:user/release-keys" PRIVATE_BUILD_DESC="g3_tmo_us-user 4.4.2 KVT49L.D85110c D85110c.1403267110 release-keys"
