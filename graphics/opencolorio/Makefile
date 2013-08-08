# $OpenBSD$

COMMENT =		color management library

V =			1.0.8
REV =			19ed2e3
DISTNAME =		imageworks-OpenColorIO-v$V-0-g${REV}
PKGNAME =		opencolorio-$V

SHARED_LIBS +=  OpenColorIO               0.0 # 1.0

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# several BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU ICE OpenImageIO SM X11 Xext Xi Xmu c glut
WANTLIB += lcms2 m pthread stdc++ tinyxml yaml-cpp

MASTER_SITES =		https://github.com/imageworks/OpenColorIO/tarball/v$V/

MODULES =		devel/cmake \
			lang/python
LIB_DEPENDS =		textproc/tinyxml \
			devel/yaml-cpp \
			graphics/openimageio \
			graphics/freeglut

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DUSE_EXTERNAL_TINYXML=ON \
			-DUSE_EXTERNAL_YAML=ON \
			-DOCIO_USE_SSE=OFF \
			-DOCIO_BUILD_STATIC=OFF \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

CFLAGS =		-pthread
WRKDIST =		${WRKDIR}/imageworks-OpenColorIO-8883824

.include <bsd.port.mk>
