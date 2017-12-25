$(call inherit-product, device/samsung/gts3lwifi/full_gts3lwifi.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_gts3lwifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := gts3lwifi
PRODUCT_MODEL := SM-T820
TARGET_VENDOR := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts3lwifixx \
    BUILD_FINGERPRINT=samsung/gts3lwifixx/gts3lwifi:7.0/NRD90M/T820XXU1AQI2:user/release-keys \
    PRIVATE_BUILD_DESC="gts3lwifixx-user 7.0 NRD90M T820XXU1AQI2 release-keys"
