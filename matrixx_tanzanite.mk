# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Matrixx stuff
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Inherit from tanzanite device
$(call inherit-product, device/xiaomi/tanzanite/device.mk)

PRODUCT_DEVICE := tanzanite
PRODUCT_NAME := matrixx_tanzanite
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24117RN76O
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_SYSTEM_NAME := tanzanite_n_gl
PRODUCT_SYSTEM_DEVICE := tanzanite
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/tanzanite_n_global/tanzanite:15/AP3A.240905.015.A2/OS2.0.213.0.VOGEUXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Matrixx flags
MATRIXX_MAINTAINER := Nvryze
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_CUSTOM_UDFPS := true
BYPASS_CHARGE_SUPPORTED := true
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
PRODUCT_NO_CAMERA := true

# SurfaceFlinger refresh rate
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
