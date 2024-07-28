DEBUG = 0
FINALPACKAGE = 1

ARCHS = arm64 arm64e

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET = iphone:16.2:15.0
else
TARGET = iphone:14.5:12.0
endif


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OSLogger

OSLogger_FILES = Tweak.xm CMManager.m
OSLogger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

