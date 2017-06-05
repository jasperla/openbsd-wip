# $OpenBSD: Makefile,v 1.8 2017/05/25 12:44:20 espie Exp $

V =		0.9.2
COMMENT =	Telegram API tools for QtQml and Qml
DISTNAME =	telegramqml-$V
CATEGORIES =	devel

SHARED_LIBS +=	telegramqml              0.0

GH_ACCOUNT =	Aseman-Land
GH_PROJECT =	TelegramQML
GH_TAGNAME =	v$V

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5Qml Qt5Quick
WANTLIB += Qt5Sql Qt5Xml crypto m pthread qtelegram-ae ssl z

MODULES =	devel/qmake x11/qt5
MODQMAKE_ARGS = BUILD_MODE+=lib

LIB_DEPENDS =	x11/qt5/qtmultimedia \
		devel/libqtelegram-aseman-edition

NO_TEST =	Yes

#CXXFLAGS +=	-Wno-c++11-narrowing

MAKE_ENV =	LIBtelegramqml_VERSION=${LIBtelegramqml_VERSION}

.include <bsd.port.mk>
