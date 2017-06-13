# $OpenBSD: $

COMMENT =	KDE digital photo management utility

CATEGORIES =	graphics
VERSION =	5.5.0
DISTNAME =	digikam-${VERSION}

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

MODULES =	devel/kf5
# https://gitlab.kitware.com/cmake/cmake/issues/15967
USE_NINJA =	NO

# XXX Version numbers from digikam-kde4
SHARED_LIBS +=  digikamcore               1.0 # 5.5
SHARED_LIBS +=  digikamdatabase           1.0 # 5.5
SHARED_LIBS +=  digikamgui                1.0 # 5.5

WANTLIB += GL GLU ICE KF5Auth KF5Bookmarks KF5CalendarCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5FileMetaData KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KDELibs4Support
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5ThreadWeaver KF5UnitConversion KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Sql
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 Xext c exiv2 expat glib-2.0 gphoto2 gphoto2_port
WANTLIB += ical icalss intl jasper jpeg lcms2 lensfun lqr-1 m
WANTLIB += opencv_calib3d opencv_contrib opencv_core opencv_features2d
WANTLIB += opencv_flann opencv_gpu opencv_highgui opencv_imgproc
WANTLIB += opencv_legacy opencv_ml opencv_nonfree opencv_objdetect
WANTLIB += opencv_ocl opencv_photo opencv_video png pthread tiff
WANTLIB += usb-1.0 z

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
		devel/gettext

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
		x11/kde-applications/kcalcore

# XXX Don't try to compile documentation translations for the moment.
# https://www.mail-archive.com/kde-bugs-dist@kde.org/msg125271.html
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DDIGIKAMSC_COMPILE_DOC=OFF \
			-DENABLE_MEDIAPLAYER=OFF \
			-DENABLE_MYSQLSUPPORT=OFF

TEST_IS_INTERACTIVE =	X11

# https://gitlab.kitware.com/cmake/cmake/issues/15967
#pre-build:
#	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
#	${NINJA} ${NINJA_FLAGS} core/digikam-gitversion


.include <bsd.port.mk>
