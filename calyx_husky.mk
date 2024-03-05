# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/calyx_common.mk)
$(call inherit-product, device/google/shusky/husky/device-calyx.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP1A.240305.019.A1/11445699:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
