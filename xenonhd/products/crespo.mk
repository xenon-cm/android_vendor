# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=soju BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/crespo

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/crespo/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/xenonhd/proprietary/crespo/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/xenonhd/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/xenonhd/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/xenonhd/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/xenonhd/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/xenonhd/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/xenonhd/products/common_facelock.mk

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

