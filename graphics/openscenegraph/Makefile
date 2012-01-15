# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		3D graphics toolkit

V =			3.0.1
DISTNAME =		OpenSceneGraph-${V}
PKGNAME =		openscenegraph-${V}

SUBST_VARS +=		V

SHARED_LIBS  =  OpenThreads               0.0 # 2.6
SHARED_LIBS +=  osg                       0.0 # 3.0
SHARED_LIBS +=  osgAnimation              0.0 # 3.0
SHARED_LIBS +=  osgDB                     0.0 # 3.0
SHARED_LIBS +=  osgFX                     0.0 # 3.0
SHARED_LIBS +=  osgGA                     0.0 # 3.0
SHARED_LIBS +=  osgManipulator            0.0 # 3.0
SHARED_LIBS +=  osgParticle               0.0 # 3.0
SHARED_LIBS +=  osgPresentation           0.0 # 3.0
SHARED_LIBS +=  osgQt                     0.0 # 3.0
SHARED_LIBS +=  osgShadow                 0.0 # 3.0
SHARED_LIBS +=  osgSim                    0.0 # 3.0
SHARED_LIBS +=  osgTerrain                0.0 # 3.0
SHARED_LIBS +=  osgText                   0.0 # 3.0
SHARED_LIBS +=  osgUtil                   0.0 # 3.0
SHARED_LIBS +=  osgViewer                 0.0 # 3.0
SHARED_LIBS +=  osgVolume                 0.0 # 3.0
SHARED_LIBS +=  osgWidget                 0.0 # 3.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openscenegraph.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# OSGPL (see LICENSE.txt)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB  = GL Half Iex IlmImf IlmThread QtGui QtOpenGL X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += avcodec avdevice avformat avutil c cairo curl expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gif
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl jasper jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png poppler poppler-glib pthread pthread-stubs
WANTLIB += rsvg-2 stdc++ swscale tiff xcb xcb-render xcb-shm z

MASTER_SITES =		${HOMEPAGE}/downloads/stable_releases/OpenSceneGraph-${V}/source/
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake \
			x11/qt4
LIB_DEPENDS =		graphics/openexr \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/libungif \
			net/curl \
			print/poppler \
			x11/gnome/librsvg

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE="Release"

NO_REGRESS =		Yes

.include <bsd.port.mk>
