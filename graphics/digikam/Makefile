# $OpenBSD: $

COMMENT =	KDE digital photo management utility

CATEGORIES =	graphics
VERSION =	5.6.0
DISTNAME =	digikam-${VERSION}

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

# XXX Check after devel/camek update
# https://gitlab.kitware.com/cmake/cmake/issues/15967
USE_NINJA =	NO

SHARED_LIBS +=  KF5kipiplugins            0.0 # 5.6
# Version numbers from digikam-kde4
SHARED_LIBS +=  digikamcore               1.0 # 5.5
SHARED_LIBS +=  digikamdatabase           1.0 # 5.5
SHARED_LIBS +=  digikamgui                1.0 # 5.5

WANTLIB += GL GLU ICE KF5Archive KF5Auth KF5Bookmarks KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5FileMetaData
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Kipi KF5Notifications KF5NotifyConfig KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5ThreadWeaver
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5PrintSupport Qt5Sql Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext c exiv2
WANTLIB += expat exslt glib-2.0 gphoto2 gphoto2_port ical icalss
WANTLIB += intl jasper jpeg lcms2 lensfun lqr-1 m opencv_calib3d
WANTLIB += opencv_contrib opencv_core opencv_features2d opencv_flann
WANTLIB += opencv_gpu opencv_highgui opencv_imgproc opencv_legacy
WANTLIB += opencv_ml opencv_nonfree opencv_objdetect opencv_ocl
WANTLIB += opencv_photo opencv_video png pthread tiff usb-1.0
WANTLIB += xml2 xslt

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
# - MySQL Database Support
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
		x11/qt5/qtwebkit \
		x11/kde-applications/kcalcore \
		x11/kde-applications/libkipi

# XXX Don't try to compile documentation translations for the moment.
# https://www.mail-archive.com/kde-bugs-dist@kde.org/msg125271.html
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DDIGIKAMSC_COMPILE_DOC=OFF \
			-DENABLE_MEDIAPLAYER=OFF \
			-DENABLE_MYSQLSUPPORT=OFF

TEST_IS_INTERACTIVE =	X11

# XXX Check after devel/camek update
# https://gitlab.kitware.com/cmake/cmake/issues/15967
#pre-build:
#	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
#	${NINJA} ${NINJA_FLAGS} core/digikam-gitversion


.include <bsd.port.mk>
