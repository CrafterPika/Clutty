INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Clutty

Clutty_FILES = Clutty.x
Clutty_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
