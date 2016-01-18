# $OpenBSD$

COMMENT =		KDE5 process monitor
DISTNAME =		ksysguard-${VERSION}

#SHARED_LIBS =		KF5Foo		0.0

WANTLIB =		

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kdelibs4support \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews \
			devel/kf5/knewstuff \
			x11/plasma/libksysguard

CONFIGURE_ARGS =	CMAKE_DISABLE_FIND_PACKAGE_Sensors=Yes

.include <bsd.port.mk>
