ARCHS = arm64e arm64
TARGET = iphone:clang:latest:latest
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SwipeInputTweak

SwipeInputTweak_FILES = Tweak.xm
SwipeInputTweak_CFLAGS = -fobjc-arc -framework Foundation  # 添加 Foundation 框架

include $(THEOS_MAKE_PATH)/tweak.mk
