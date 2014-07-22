include device/qcom/msm7627a/msm7627a.mk

$(call inherit-product, device/592zn/common/common.mk)

DEVICE_PACKAGE_OVERLAYS := device/592zn/w650/overlay

PRODUCT_NAME := w650
PRODUCT_DEVICE := w650

PRODUCT_PACKAGES += \
    sensors.msm7627a

PRODUCT_PACKAGES += \
    SystemUI_Ext \
    Apollo \
    CMFileManager \
    superuser \
    DSPManager \
    libcyanogen-dsp \
     audio_effects.conf \
     su

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/592zn/w650/prebuilt/fts_touch.idc:system/usr/idc/fts_touch.idc \
    device/592zn/w650/prebuilt/ms-msg21xx.idc:system/usr/idc/ms-msg21xx.idc \
    device/592zn/w650/prebuilt/fts_touch.kl:system/usr/keylayout/fts_touch.kl \
    device/592zn/w650/prebuilt/ms-msg21xx.kl:system/usr/keylayout/ms-msg21xx.kl

PRODUCT_PACKAGES += vold.fstab

PRODUCT_COPY_FILES += device/592zn/w650/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
  ro.product.model= K-touch_w650_592zn \
  ro.sf.lcd_density=160

