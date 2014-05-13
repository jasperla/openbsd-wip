# $OpenBSD: Makefile,v 1.14 2013/07/01 10:39:18 sthen Exp $

# XXX does not clean properly

COMMENT=	common low-level libraries for logilab projects

MODPY_EGG_VERSION =	0.61.0
DISTNAME=	logilab-common-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.logilab.org/projects/common/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=l/logilab-common/}

MODULES=	lang/python

RUN_DEPENDS=	devel/py-mxDateTime
TEST_DEPENDS=${RUN_DEPENDS} \
	     ${FULLPKGNAME}:${PKGPATH}

do-test: fake
	@cd ${WRKSRC}/test && \
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ../bin/pytest

.include <bsd.port.mk>
