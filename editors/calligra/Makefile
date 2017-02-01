# $OpenBSD: Makefile,v 1.17 2016/09/12 20:58:39 naddy Exp $

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	https://www.calligra-suite.org/
DISTNAME =	calligra-3.0.0
CATEGORIES =	editors

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}
EXTRACT_SUFX =	.tar.gz

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes
DPB_PROPERTIES =	parallel

MODULES =	devel/kf5 \
		multimedia/phonon \
		devel/cmake \
		devel/gettext

SHARED_LIBS =   RtfReader                 50.0 # 0.0
SHARED_LIBS +=  basicflakes               50.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      50.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         50.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      50.0 # 0.0
SHARED_LIBS +=  flake                     50.0 # 0.0
SHARED_LIBS +=  karboncommon              50.0 # 0.0
SHARED_LIBS +=  karbonui                  50.0 # 0.0
SHARED_LIBS +=  komain                    50.0 # 0.0
SHARED_LIBS +=  komsooxml                 50.0 # 13.0
SHARED_LIBS +=  koodf                     50.0 # 0.0
SHARED_LIBS +=  koodf2                    50.0 # 13.0
SHARED_LIBS +=  koodfreader               50.0 # 13.0
SHARED_LIBS +=  kopageapp                 50.0 # 0.0
SHARED_LIBS +=  koplugin                  50.0 # 0.0
SHARED_LIBS +=  kotext                    50.0 # 0.0
SHARED_LIBS +=  kotextlayout              50.0 # 13.0
SHARED_LIBS +=  kovectorimage             50.0 # 13.0
SHARED_LIBS +=  koversion                 0.0 # 14.0
SHARED_LIBS +=  kowidgets                 50.0 # 0.0
SHARED_LIBS +=  kowidgetutils             50.0 # 0.0
SHARED_LIBS +=  kowv2                     50.0 # 0.0
SHARED_LIBS +=  kundo2                    50.0 # 0.0
SHARED_LIBS +=  pigmentcms                50.0 # 0.0
SHARED_LIBS +=  wordsprivate              14.0 # 1.0
SHARED_LIBS +=  koformula                 15.0 # 1.0
SHARED_LIBS +=  kostore                   15.0 # 1.0
SHARED_LIBS +=  kdeinit5_calligrasheets   0.0 # 0.0
SHARED_LIBS +=  kdeinit5_calligrawords    0.0 # 0.0
SHARED_LIBS +=  kdeinit5_karbon           0.0 # 0.0

WANTLIB += ICE KF5Activities KF5Archive KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JS KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KDELibs4Support KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5NotifyConfig KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sql Qt5Svg Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras Qt5Xml SM
WANTLIB += X11 Xext c fontconfig freetype gsl jpeg lcms2 m openjpeg
WANTLIB += phonon4qt5experimental poppler poppler-qt5 pthread
WANTLIB += z

BUILD_DEPENDS +=devel/boost \
		math/eigen3 \
		productivity/librcps

RUN_DEPENDS +=	devel/desktop-file-utils \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+3,-guic

LIB_DEPENDS +=	converters/libiconv \
		devel/kf5/karchive \
		devel/kf5/kcodecs\
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdoctools \
		devel/kf5/kguiaddons\
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/ktextwidgets \
		devel/kf5/sonnet \
		devel/kf5/threadweaver \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/knotifications \
		devel/kf5/kactivities \
		devel/kf5/knotifyconfig \
		devel/kf5/kcmutils \
		devel/kf5/kross \
		devel/kf5/ktexteditor \
		devel/kf5/khtml \
		databases/freetds \
		databases/libpqxx>=3,<5 \
		databases/mariadb \
		devel/gsl \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/opencolorio \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff \
		math/fftw3,double \
		net/curl \
		print/poppler,,-qt5 \
		security/qca2 \
		textproc/icu4c \
		textproc/libwpd

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy:BOOL=Off \
			-DWITH_Libgit2:BOOL=Off \
			-DWITH_Libqgit2:BOOL=Off \
			-DWITH_LibEtonyek:BOOL=Off \
			-DWITH_LibOdfGen:BOOL=Off \
			-DWITH_LibVisio:BOOL=Off \
			-DWITH_LibWpg:BOOL=Off \
			-DWITH_LibWps:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_Vc:BOOL=Off

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
