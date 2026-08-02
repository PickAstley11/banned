TARGET := iphone:clang:latest:15.0

ARCHS := arm64 arm64e

THEOS_PACKAGE_SCHEME := rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := banned

banned_FILES := Tweak.x
banned_CFLAGS := -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk