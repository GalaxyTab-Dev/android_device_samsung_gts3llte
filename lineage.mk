$(call inherit-product, device/samsung/gts3llte/full_gts3llte.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_gts3llte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := gts3llte
PRODUCT_MODEL := SM-T825
TARGET_VENDOR := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts3lltexx \
    BUILD_FINGERPRINT="samsung/gts3lltexx/gts3llte:7.0/NRD90M/T825XXU1AQI2:user/release-keys" \
    PRIVATE_BUILD_DESC="gts3lltexx-user 7.0 NRD90M T825XXU1AQI2 release-keys"
