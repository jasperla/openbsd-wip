# $OpenBSD:

COMMENT =	advanced drawing and image manipulation

VERSION =	3.1.2.1
DISTNAME =	krita-${VERSION}

SHARED_LIBS +=  kritabasicflakes          0.0 # 16.0
SHARED_LIBS +=  kritacolor                0.0 # 16.0
SHARED_LIBS +=  kritacolord               0.0 # 16.0
SHARED_LIBS +=  kritaflake                0.0 # 16.0
SHARED_LIBS +=  kritaglobal               0.0 # 16.0
SHARED_LIBS +=  kritaimage                0.0 # 16.0
SHARED_LIBS +=  kritalibbrush             0.0 # 16.0
SHARED_LIBS +=  kritalibpaintop           0.0 # 16.0
SHARED_LIBS +=  kritaodf                  0.0 # 16.0
SHARED_LIBS +=  kritapigment              0.0 # 16.0
SHARED_LIBS +=  kritaplugin               0.0 # 16.0
SHARED_LIBS +=  kritapsd                  0.0 # 16.0
SHARED_LIBS +=  kritastore                0.0 # 16.0
SHARED_LIBS +=  kritatext                 0.0 # 16.0
SHARED_LIBS +=  kritatextlayout           0.0 # 16.0
SHARED_LIBS +=  kritaui                   0.0 # 16.0
SHARED_LIBS +=  kritaundo2                0.0 # 16.0
SHARED_LIBS +=  kritavectorimage          0.0 # 16.0
SHARED_LIBS +=  kritaversion              0.0 # 16.0
SHARED_LIBS +=  kritawidgets              0.0 # 16.0
SHARED_LIBS +=  kritawidgetutils          0.0 # 16.0

CATEGORIES =	graphics

HOMEPAGE =	https://krita.org

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes


WANTLIB += Half ICE Iex IlmImf IlmThread Imath KF5Archive KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5ItemViews KF5KIOCore KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem OpenColorIO Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext Xi boost_system-mt
WANTLIB += c curl exiv2 fftw3 gsl gslcblas jpeg lcms2 m png poppler-qt5
WANTLIB += pthread raw tiff xcb xcb-util z

MASTER_SITES ?=	${MASTER_SITE_KDE:=stable/krita/3.1.2/}
EXTRACT_SUFX =	.tar.gz

MODULES =	devel/kf5 \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/opencolorio \
			graphics/openexr \
			graphics/libraw \
			net/curl \
			math/fftw3 \
			print/poppler,,-qt5 \
			devel/kf5/karchive \
			devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kcompletion \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons\
			devel/kf5/ki18n \
			devel/kf5/kitemmodels \
			devel/kf5/kitemviews \
			devel/kf5/kwindowsystem \
			devel/kf5/kcrash \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/gsl \
			x11/qt5/qtsvg \
			x11/qt5/qtmultimedia

BUILD_DEPENDS +=	devel/boost \
			math/eigen3 \
			devel/kf5/kdoctools \
			devel/gettext-tools

.include <bsd.port.mk>
