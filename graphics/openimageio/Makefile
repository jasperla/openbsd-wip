# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		library for reading and writing images

V =			1.0.3
REV =			1c4cd2c
DISTNAME =		OpenImageIO-oiio-Release-${V}-2-g${REV}
PKGNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO	0.0 # 1.0

CATEGORIES =		graphics

HOMEPAGE =		http://sites.google.com/site/openimageio/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath QtGui
WANTLIB += QtOpenGL SM X11 Xext boost_filesystem-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c jpeg m openjpeg png
WANTLIB += pthread stdc++ tiff webp z

MASTER_SITES =		https://github.com/OpenImageIO/oiio/tarball/RB-${MAJ}/

MODULES =		devel/cmake \
			lang/python \
			x11/qt4
LIB_DEPENDS =		devel/boost \
			graphics/png \
			graphics/openjpeg \
			graphics/tiff \
			graphics/libwebp \
			graphics/jpeg \
			graphics/glew \
			graphics/ilmbase \
			graphics/openexr

CONFIGURE_ARGS +=	-DPYLIB_INSTALL_DIR="lib/python${MODPY_VERSION}/site-packages"

CFLAGS +=		-pthread
WRKDIST =		${WRKDIR}/OpenImageIO-oiio-${REV}
WRKSRC =		${WRKDIST}/src

.include <bsd.port.mk>
