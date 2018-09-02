# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT-main =		distributed IRC client (monolithic client)
COMMENT-client =	distributed IRC client (client)
COMMENT-common =	distributed IRC client (common files)
COMMENT-core =		distributed IRC client (core)

V =			0.12.5
DISTNAME =		quassel-${V}
PKGNAME-main =		quassel-${V}
PKGNAME-client =	quassel-client-${V}
PKGNAME-common =	quassel-common-${V}
PKGNAME-core =		quassel-core-${V}

CATEGORIES =		net

HOMEPAGE =		https://quassel-irc.org/

#MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB-main += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB-main += KF5Notifications KF5NotifyConfig KF5SonnetUi KF5TextWidgets
WANTLIB-main += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-main += Qt5Script Qt5Sql Qt5Widgets Qt5Xml c dbusmenu-qt5 execinfo
WANTLIB-main += m phonon4qt5 phonon4qt5experimental qca-qt5 z
WANTLIB-client += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB-client += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB-client += KF5Notifications KF5NotifyConfig KF5SonnetUi KF5TextWidgets
WANTLIB-client += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB-client += Qt5Widgets Qt5Xml c dbusmenu-qt5 execinfo m
WANTLIB-client += phonon4qt5 phonon4qt5experimental z
WANTLIB-common =
WANTLIB-core += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Script Qt5Sql
WANTLIB-core += c execinfo m qca-qt5 z

MASTER_SITES =		https://quassel-irc.org/pub/

EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES =	-main -client -common -core

MODULES =		devel/cmake multimedia/phonon x11/qt5

BUILD_DEPENDS +=	devel/kf5/extra-cmake-modules

RUN_DEPENDS-main =	${MODPHONON_RUN_DEPENDS} \
			devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-client =	${MODPHONON_RUN_DEPENDS} \
			devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-common =	x11/gtk+3,-guic
RUN_DEPENDS-core =

LIB_DEPENDS-main =	${MODPHONON_LIB_DEPENDS} \
			${MODQT5_LIB_DEPENDS} \
			devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet \
			security/qca-qt5 \
			x11/dbusmenu-qt,qt5 \
			x11/qt5/qtscript
LIB_DEPENDS-client =	${MODPHONON_LIB_DEPENDS} \
			${MODQT5_LIB_DEPENDS} \
			devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet \
			x11/dbusmenu-qt,qt5
LIB_DEPENDS-common =
LIB_DEPENDS-core =	${MODQT5_LIB_DEPENDS} \
			security/qca-qt5 \
			x11/qt5/qtscript

SEPARATE_BUILD =	Yes
# XXX not using WITH_WEBKIT because safety of x11/qt5/qtwebkit is questionable;
# XXX not using WITH_WEBENGINE because x11/qt5/qtwebengine is not available yet.
CONFIGURE_ARGS +=	-DGIT_EXECUTABLE="" \
			-DUSE_QT5:Bool=on \
			-DWITH_KDE:Bool=on

NO_TEST =		Yes

.include <bsd.port.mk>
