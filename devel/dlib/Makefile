# $OpenBSD:

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		C++ toolkit for machine learning and data analysis

DISTNAME =		dlib-19.4

SHARED_LIBS +=  dlib                      0.0 # 19.4

CATEGORIES =		devel

HOMEPAGE =		http://dlib.net/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# MIT-like (Boost)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext gif jpeg m png pthread sqlite3

MASTER_SITES =		${HOMEPAGE}/files/
EXTRACT_SUFX =		.tar.bz2

.include <bsd.port.arch.mk>

MODULES =		lang/clang \
			devel/cmake

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c++

# XXX optional OpenBLAS
LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/giflib \
			databases/sqlite3

TEST_DEPENDS =		devel/dlib \
			graphics/giflib

pre-test:
	test -d ${WRKBUILD}/dlib/test || mkdir ${WRKBUILD}/dlib/test \
	&& cd ${WRKBUILD}/dlib/test && \
	${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
	-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY:Bool=True \
		-G ${_MODCMAKE_GEN} ${CONFIGURE_ARGS} ${WRKSRC}/dlib/test
	cd ${WRKBUILD}/dlib/test && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} ${ALL_TARGET}

do-test:
	cd ${WRKBUILD}/dlib/test && ./dtest --runall


.include <bsd.port.mk>
