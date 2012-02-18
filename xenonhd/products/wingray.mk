# Inherit AOSP device configuration for wingray.
$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=tervigon BUILD_ID=IML77 BUILD_FINGERPRINT=motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys" BUILD_NUMBER=239789

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra wingray overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/wingray

# Copy wingray specific prebuilt files
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

