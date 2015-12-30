# $OpenBSD: Makefile,v 1.9 2013/08/07 21:31:42 naddy Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.9999999
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=    		devel www textproc

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
