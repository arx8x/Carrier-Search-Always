ARCHS = armv7 arm64

include ~/theos/makefiles/common.mk

TWEAK_NAME = CarrierSearchAlways
CarrierSearchAlways_FILES = Tweak.xm
CarrierSearchAlways_FRAMEWORKS = UIKit

include ~/theos/makefiles/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
