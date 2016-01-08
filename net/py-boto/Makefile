# $OpenBSD: Makefile,v 1.16 2015/09/29 10:52:29 sthen Exp $

COMMENT =	python interface to amazon web services

MODPY_EGG_VERSION = 2.38.0
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	https://github.com/boto/boto
MODPY_PI =	Yes

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx \

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-httpretty${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

DOCDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}boto

FLAVORS =		python3
FLAVOR ?=

post-build:
	cd ${WRKSRC} && \
		PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build -N -b text docs/source \
		build/doc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/ref
	${INSTALL_DATA} ${WRKSRC}/README.rst ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/build/doc/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/build/doc/ref/*.txt ${DOCDIR}/ref
.if ${FLAVOR:Mpython3}
	cd ${PREFIX}/bin && find . -name '*' -exec mv {} {}${MODPY_BIN_SUFFIX} \;
.endif

# We can run the offline unit tests at least
do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} test.py unit

.include <bsd.port.mk>
