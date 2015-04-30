# $OpenBSD: Makefile,v 1.9 2013/08/07 21:31:42 naddy Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.999
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=    		devel www textproc

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_PI =		Yes

TEST_DEPENDS=	devel/py-simplejson

.include <bsd.port.mk>
