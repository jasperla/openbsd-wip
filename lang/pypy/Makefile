# $OpenBSD$

ONLY_FOR_ARCHS =	amd64

COMMENT =		fast implementation of the Python language

V=2.0
DISTNAME =		pypy-${V}-src
PKGNAME =		pypy-${V}

CATEGORIES =		lang

HOMEPAGE =		http://pypy.org/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# PyPy is MIT; the Python libraries it comes with have the same license as
# Python
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto curses expat ffi m pthread ssl util z

MASTER_SITES =		https://bitbucket.org/pypy/pypy/downloads/
EXTRACT_SUFX =		.tar.bz2

DIST_SUBDIR =		pypy

MODULES +=		devel/gettext lang/python gcc4
MODPY_VERSION =		2.7
MODGCC4_ARCHS =		*
MODGCC4_VERSION =	4.7
MODGCC4_LANGS =		c

VMEM_WARNING =		Yes
USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx

CFLAGS += 		-pthread -fomit-frame-pointer -D_BSD_SOURCE

WRKDIST =		${WRKDIR}/pypy-${V}-src

do-build:
	cd ${WRKSRC}/pypy/goal/ && \
	  PYPY_USESSION_DIR=${WRKDIR}/usession PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  CC=egcc CFLAGS="${CFLAGS}" \
	  ${MODPY_BIN} ../../rpython/bin/rpython --source -Ojit
	cd ${WRKDIR}/usession/testing_1 && ${MAKE_PROGRAM}

do-install:
	mkdir -p ${PREFIX}/pypy-${V}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy-c ${PREFIX}/pypy-${V}/bin/pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy-${V}/include
	cp -rp ${WRKSRC}/include/* ${PREFIX}/pypy-${V}/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy-${V}/include
	${INSTALL_DATA_DIR} ${PREFIX}/pypy-${V}/lib_pypy
	cp -rp ${WRKSRC}/lib_pypy/* ${PREFIX}/pypy-${V}/lib_pypy
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy-${V}/lib_pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy-${V}/lib-python/2.7
	cp -rp ${WRKSRC}/lib-python/2.7/* ${PREFIX}/pypy-${V}/lib-python/2.7
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PREFIX}/pypy-${V}/lib-python/2.7

.include <bsd.port.mk>
