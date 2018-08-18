# $OpenBSD$

COMMENT =	common code and data for many KDE games
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	devel games

KDE5 =		Yes

MODULES +=	lang/python

BUILD_DEPENDS +=devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kcompletion \
		devel/kf5/kwindowsystem \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		x11/kde-applications/kpimtextedit \
		devel/boost \
		security/gpgme,,-qt

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
