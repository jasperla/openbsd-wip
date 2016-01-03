# $OpenBSD$

COMMENT =		interfacing with pseudo terminal devices in KDE
DISTNAME =		kpty-${VERSION}

SHARED_LIBS =		KF5Pty		0.0

WANTLIB =		KF5CoreAddons KF5I18n Qt5Core m util

MODULES =		devel/gettext

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_UTEMPTER=Yes

.include <bsd.port.mk>
