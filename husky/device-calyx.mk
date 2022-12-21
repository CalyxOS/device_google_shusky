DEVICE_PACKAGE_OVERLAYS += device/google/shusky/husky/overlay-calyx

TARGET_VENDOR_PROP += device/google/shusky/husky/vendor.prop

$(call inherit-product, device/google/shusky/device-calyx.mk)
