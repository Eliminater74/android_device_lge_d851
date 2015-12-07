PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, device/lge/d851/full_d851.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)



PRODUCT_DEVICE := d851
PRODUCT_NAME := omni_d851
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D851
PRODUCT_MANUFACTURER := LGE

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1440x2560

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:5.0.1/LRX21Y/15227151285fc:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 5.0.1 LRX21Y 15227151285fc release-keys"
