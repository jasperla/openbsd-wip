# $OpenBSD$

COMMENT =	Common code and data for many KDE games
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	devel games

KDE5 =		Yes

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdbusaddons \
		devel/kf5/kitemviews \
		devel/kf5/kglobalaccel \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash \
		devel/kf5/ktextwidgets

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/karchive \
		devel/kf5/kdnssd \
		devel/kf5/kdeclarative \
		devel/kf5/kguiaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kxmlgui \
		audio/openal

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
