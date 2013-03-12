#
# This is the product configuration for a full umts_spyder
#
$(call inherit-product, device/motorola/omap4-kexec-common/common.mk)

DEVICE_FOLDER := device/motorola/umts_spyder

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay/aosp

# Hardware HALs
PRODUCT_PACKAGES += \
    power.umts_spyder \
    camera.umts_spyder \
    lights.umts_spyder \
    hwcomposer.umts_spyder

# Modem
PRODUCT_PACKAGES += \
    Stk

# Kexec rootfs files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/kexec/devtree:system/etc/kexec/devtree \
    $(OUT)/ramdisk.img:system/etc/kexec/ramdisk.img \
    $(OUT)/kernel:system/etc/kexec/kernel

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/motorola/umts_spyder/umts_spyder-vendor.mk)
$(call inherit-product-if-exists, vendor/motorola/umts_spyder/umts_spyder-vendor-stock-ducati.mk)
$(call inherit-product-if-exists, vendor/motorola/omap4-common/common-vendor-pvr.mk)

