# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_find5
PRODUCT_DEVICE := find5
PRODUCT_BRAND := Android
PRODUCT_MODEL := Find 5
PRODUCT_MANUFACTURER := Oppo
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, device/oppo/find5/device.mk)
$(call inherit-product-if-exists, vendor/oppo/find5/find5-vendor.mk)
