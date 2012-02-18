# Inherit AOSP device configuration for stingray.
$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=HLK75F BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys PRIVATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys" BUILD_NUMBER=221360

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra stingray overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/stingray

# Copy stingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/xenonhd/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/xenonhd/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/xenonhd/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/xenonhd/products/common_facelock.mk

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

