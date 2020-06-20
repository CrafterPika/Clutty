include $(THEOS)/makefiles/common.mk

ARCHS = armv7 armv7s arm64 arm64e

BUNDLE_NAME = Clutty

Clutty_FILES = XDXRootListController.m
Clutty_INSTALL_PATH = /Library/PreferenceBundles
Clutty_FRAMEWORKS = UIKit
Clutty_PRIVATE_FRAMEWORKS = Preferences
Clutty_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Clutty.plist$(ECHO_END)
