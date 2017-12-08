# $OpenBSD$

COMMENT =	Image viewer for KDE
DISTNAME =	gwenview-${VERSION}
CATEGORIES =	graphics

KDE5 =		Yes

SHARED_LIBS +=  gwenviewlib               53.0 # 4.97

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Auth KF5Baloo KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5FileMetaData KF5I18n
WANTLIB += KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDcraw KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Kipi KF5Notifications KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml X11 c exiv2 jpeg lcms2 m phonon4qt5 png z

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	devel/kf5/ki18n\
		devel/kf5/kio \
		devel/kf5/kiconthemes \
		devel/kf5/kparts \
		devel/kf5/kwindowsystem \
		devel/kf5/knotifications \
		devel/kf5/kitemmodels \
		devel/kf5/kactivities \
		devel/kf5/baloo \
		x11/kde-applications/libkipi \
		x11/kde-applications/libkdcraw

NO_TEST =	Yes

.include <bsd.port.mk>
