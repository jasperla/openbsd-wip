# $OpenBSD$

ONLY_FOR_ARCHS =	amd64

COMMENT =		Fast implementation of the Python language
COMMENT-rpython =	RPython translation

V=1.9
DISTNAME =		release-${V}
PKGNAME =		pypy-${V}

CATEGORIES =		lang

HOMEPAGE =		http://pypy.org/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# PyPy is MIT; the Python libraries it comes with have the same license as
# Python
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		https://bitbucket.org/pypy/pypy/get/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_VERSION=		2.7
VMEM_WARNING =		Yes
USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx

WRKDIST=		${WRKDIR}/pypy-pypy-*
do-build:
	cd ${WRKSRC}/pypy/translator/goal/ && \
	  PYPY_USESSION_DIR=${WRKDIR}/usession PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  CC=${CC} CFLAGS="${CFLAGS}" \
	  ${MODPY_BIN} translate.py --source -Ojit
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
