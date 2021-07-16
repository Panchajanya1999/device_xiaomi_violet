LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    PixelLiveWallpaperPrebuilt \
    MicropaperPrebuilt \
    AmbientSensePrebuilt \
    Drive \
    GoogleCamera \
    Maps \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    Snap \
    DevicePolicyPrebuilt

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
