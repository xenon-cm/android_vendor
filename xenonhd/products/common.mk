# Generic product
PRODUCT_NAME := xenonhd
PRODUCT_BRAND := xenonhd
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/BooksTablet.apk:system/app/BooksTablet.apk \
    vendor/xenonhd/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/xenonhd/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/xenonhd/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/xenonhd/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/xenonhd/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/xenonhd/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/xenonhd/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/xenonhd/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/xenonhd/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/xenonhd/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/xenonhd/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/xenonhd/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/xenonhd/proprietary/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/xenonhd/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/xenonhd/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/xenonhd/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/xenonhd/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/xenonhd/proprietary/common/app/QuickSearchBox.apk:system/app/QuickSearchBox.apk \
    vendor/xenonhd/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/xenonhd/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/xenonhd/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/xenonhd/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/xenonhd/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/xenonhd/proprietary/common/etc/contributors.css:system/etc/contributors.css \
    vendor/xenonhd/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/xenonhd/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/xenonhd/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/xenonhd/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/xenonhd/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/xenonhd/proprietary/common/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/xenonhd/proprietary/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/xenonhd/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/xenonhd/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/xenonhd/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/xenonhd/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/xenonhd/proprietary/common/xbin/su:system/xbin/su

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/xenonhd/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/xenonhd/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/xenonhd/proprietary/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/xenonhd/proprietary/common/app/YouTube.apk:system/app/YouTube.apk
endif

ifneq ($(filter xenonhd_crespo xenonhd_crespo4g xenonhd_maguro xenonhd_toro,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/xenonhd/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

