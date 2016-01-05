# $OpenBSD$

COMMENT =		write/wall listener
DISTNAME =		kwrited-${VERSION}

WANTLIB =  KF5CoreAddons KF5I18n KF5Notifications KF5Pty Qt5Core
WANTLIB += Qt5Gui Qt5Widgets c m pthread

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/knotifications \
			devel/kf5/kpty

.include <bsd.port.mk>
