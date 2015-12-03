PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, device/lge/d851/full_d851.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/nameless/config/apns.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nameless/config/common.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Release name
PRODUCT_RELEASE_NAME := d851

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Enhanced NFC
$(call inherit-product, vendor/nameless/config/nfc_enhanced.mk)

PRODUCT_NAME := nameless_d851
PRODUCT_DEVICE := d851
PRODUCT_BRAND := LG
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := LG

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g3" PRODUCT_NAME="g3_tmo_us" BUILD_FINGERPRINT="lge/g3_tmo_us/g3:4.4.2/KVT49L.D85110c/D85110c.1403267110:user/release-keys" PRIVATE_BUILD_DESC="g3_tmo_us-user 4.4.2 KVT49L.D85110c D85110c.1403267110 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:5.0.1/LRX21Y/15227151285fc:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 5.0.1 LRX21Y 15227151285fc release-keys"
