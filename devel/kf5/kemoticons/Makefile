# $OpenBSD$

COMMENT =	text emoticons to graphical emoticons KDE converter
DISTNAME =	kemoticons-${VERSION}

SHARED_LIBS =	KF5Emoticons		0.0

WANTLIB =  KF5Archive KF5ConfigCore KF5CoreAddons KF5Service Qt5Core
WANTLIB += Qt5Gui Qt5Xml m

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice

.include <bsd.port.mk>
