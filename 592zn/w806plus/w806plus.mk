include device/qcom/msm7627a/msm7627a.mk

$(call inherit-product, device/592zn/common/common.mk)

DEVICE_PACKAGE_OVERLAYS := device/592zn/w806plus/overlay

PRODUCT_NAME := w806plus
PRODUCT_DEVICE := w806plus

PRODUCT_PACKAGES += \
    sensors.msm7627a.so

PRODUCT_PACKAGES += \
    SystemUI_Ext \
    Apollo \
    CMFileManager \
    superuser \
    DSPManager \
    libcyanogen-dsp \
     audio_effects.conf \
     su

PRODUCT_COPY_FILES += device/592zn/w806plus/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    device/592zn/w806plus/vold.fstab:system/etc/vold.fstab


PRODUCT_PROPERTY_OVERRIDES += \
  ro.product.model= K-touch_w806+ \
  ro.sf.lcd_density=240

