# $OpenBSD: Makefile,v 1.14 2013/07/01 10:39:18 sthen Exp $

COMMENT=	common low-level libraries for logilab projects

MODPY_EGG_VERSION =	0.63.2
DISTNAME=	logilab-common-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=	lang/python

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-tz${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=	devel/py-mxDateTime
.endif

MODPY_SETUPTOOLS =	Yes
MODPY_ADJ_FILES =	bin/pytest

do-test: fake
	@cd ${WRKSRC}/test && \
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ../bin/pytest

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.if ${FLAVOR:Mpython3}
	mv ${PREFIX}/bin/pytest ${PREFIX}/bin/pytest${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
