COMMENT-main =		distributed IRC client (monolithic client)
COMMENT-client =	distributed IRC client (client)
COMMENT-common =	distributed IRC client (common files)
COMMENT-core =		distributed IRC client (core)

V =			0.14.0
DISTNAME =		quassel-${V}
PKGNAME-main =		quassel-${V}
PKGNAME-client =	quassel-client-${V}
PKGNAME-common =	quassel-common-${V}
PKGNAME-core =		quassel-core-${V}

CATEGORIES =		net

HOMEPAGE =		https://quassel-irc.org/

#MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB-main += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB-main += KF5Notifications KF5NotifyConfig KF5SonnetUi KF5TextWidgets
WANTLIB-main += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB-main += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB-main += Qt5Script Qt5Sql Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB-main += Qt5WebEngineWidgets Qt5Widgets Qt5Xml c dbusmenu-qt5
WANTLIB-main += execinfo lber ldap m phonon4qt5 qca-qt5 z
WANTLIB-client += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB-client += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB-client += KF5Notifications KF5NotifyConfig KF5SonnetUi KF5TextWidgets
WANTLIB-client += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB-client += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB-client += Qt5WebChannel Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB-client += Qt5Widgets Qt5Xml c dbusmenu-qt5 execinfo m phonon4qt5 z
WANTLIB-common =
WANTLIB-core += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Script Qt5Sql
WANTLIB-core += c execinfo lber ldap m qca-qt5 z

MASTER_SITES =		https://quassel-irc.org/pub/

EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES =	-main -client -common -core

MODULES =		devel/cmake x11/qt5

BUILD_DEPENDS +=	devel/gettext,-tools \
			devel/kf5/extra-cmake-modules

RUN_DEPENDS-main =	devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-client =	devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-common =	x11/gtk+3,-guic
RUN_DEPENDS-core =

LIB_DEPENDS-main =	${MODQT5_LIB_DEPENDS} \
			databases/openldap,-main \
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
			multimedia/phonon \
			security/qca-qt5 \
			x11/dbusmenu-qt \
			x11/qt5/qtscript \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine
LIB_DEPENDS-client =	${MODQT5_LIB_DEPENDS} \
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
			multimedia/phonon \
			x11/dbusmenu-qt \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine
LIB_DEPENDS-common =
LIB_DEPENDS-core =	${MODQT5_LIB_DEPENDS} \
			databases/openldap,-main \
			security/qca-qt5 \
			x11/qt5/qtscript

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS +=	-DENABLE_SHARED=OFF \
			-DGIT_EXECUTABLE="" \
			-DWITH_KDE:Bool=on \
			-DWITH_WEBENGINE:Bool=on

NO_TEST =		Yes

.include <bsd.port.mk>
