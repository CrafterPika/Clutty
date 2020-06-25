INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7 armv7s arm64 arm64e
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Clutty

Clutty_FILES = Clutty.x
Clutty_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += cluttyprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
