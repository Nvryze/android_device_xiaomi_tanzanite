# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/tanzanite/device.mk)

# Inherit some common Matrixx stuff
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_tanzanite
PRODUCT_DEVICE := tanzanite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 14

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

MATRIXX_MAINTAINER := Nvryze
