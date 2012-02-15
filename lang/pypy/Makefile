# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Fast implementation of the Python language
COMMENT-rpython =	RPython translation

V=1.8
DISTNAME =		release-${V}
PKGNAME =		pypy-${V}
PKGNAME-foo =		pypy_rpython-${V}

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

VMEM_WARNING =		Yes
BUILD_DEPENDS =		devel/gmake \
			lang/python/2.7 \
			textproc/py-sphinx
LIB_DEPENDS-main =	archivers/bzip2
LIB_DEPENDS-rpython =	devel/boehm-gc

WRKDIST=		${WRKDIR}/pypy-pypy-*
do-build:
	cd ${WRKSRC}/pypy/translator/goal/ && \
	  PYPY_USESSION_DIR=${WRKDIR}/usession python2.7 translate.py --source -Ojit
	cd ${WRKDIR}/usession/testing_1 && gmake

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
	${INSTALL_DATA_DIR} ${PREFIX}/pypy-${V}/lib-python/modified-2.7
	cp -rp ${WRKSRC}/lib-python/modified-2.7/* ${PREFIX}/pypy-${V}/lib-python/modified-2.7
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy-${V}/lib-python/modified-2.7

.include <bsd.port.mk>