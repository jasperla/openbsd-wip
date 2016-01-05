# $OpenBSD$

COMMENT =		foo something
DISTNAME =		kinfocenter-${VERSION}

#SHARED_LIBS =		KF5Foo		0.0

WANTLIB =		

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/kf5/kdoctools
RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kcmutils \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kdeclarative \
			devel/kf5/kdelibs4support \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kpackage \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			sysutils/pciutils

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KF5Wayland=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_RAW1394=Yes

.include <bsd.port.mk>
