# $OpenBSD: $

COMMENT =	KDE digital photo management utility

DISTNAME =	digikam-5.9.0

CATEGORIES =	graphics

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  KF5kipiplugins            0.0 # 5.6
# Version numbers from digikam-kde4
SHARED_LIBS +=  digikamcore               1.0 # 5.5
SHARED_LIBS +=  digikamdatabase           1.0 # 5.5
SHARED_LIBS +=  digikamgui                1.0 # 5.5

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5FileMetaData
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Kipi KF5Notifications
WANTLIB += KF5NotifyConfig KF5Service KF5Solid KF5ThreadWeaver
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml Qt5XmlPatterns SM X11 Xext c exiv2 expat exslt
WANTLIB += glib-2.0 gphoto2 gphoto2_port intl jasper jpeg lcms2
WANTLIB += lensfun lqr-1 m opencv_core opencv_imgcodecs opencv_imgproc
WANTLIB += opencv_objdetect png tiff usb-1.0 xml2 xslt z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

FLAVORS =	mysql
FLAVOR ?=

MODULES =	devel/kf5

BUILD_DEPENDS =	misc/shared-desktop-ontologies \
		x11/qt5/qtxmlpatterns \
		devel/git \
		devel/bison \
		devel/boost \
		devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/karchive \
		math/eigen3

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		databases/sqlite \
		devel/gettext

# TODO
# - libksane
# - libakonadicontact

LIB_DEPENDS +=	devel/kf5/kservice \
		devel/kf5/kcoreaddons \
		devel/kf5/solid \
		devel/kf5/kiconthemes \
		devel/kf5/kbookmarks \
		devel/kf5/kfilemetadata \
		devel/kf5/kconfig \
		devel/kf5/kwindowsystem \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/threadweaver \
		devel/kf5/knotifyconfig \
		graphics/jpeg \
		graphics/tiff \
		graphics/png \
		graphics/lcms2 \
		graphics/libgphoto2 \
		graphics/jasper \
		graphics/lensfun \
		graphics/opencv \
		graphics/liblqr \
		graphics/exiv2 \
		x11/qt5/qtwebkit \
		x11/qt5/qtxmlpatterns \
		x11/kde-applications/kcalcore \
		x11/kde-applications/libkipi

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DENABLE_MEDIAPLAYER=OFF \

CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0071=NEW

.if ${FLAVOR:Mmysql}
LIB_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS =	-DENABLE_MYSQLSUPPORT=ON
.endif

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
