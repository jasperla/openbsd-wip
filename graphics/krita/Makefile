# $OpenBSD:
#
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

WANTLIB += ICE Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml SM X11 Xext Xi c
WANTLIB += jpeg m png pthread tiff xcb xcb-util z

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/krita/3.1.2/}
EXTRACT_SUFX =	.tar.gz

MODULES =	devel/kf5 \
		devel/cmake \
		devel/gettext \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

LIB_DEPENDS +=	graphics/jpeg \
		graphics/png \
		graphics/tiff

.include <bsd.port.mk>
