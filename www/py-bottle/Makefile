# $OpenBSD$

PKG_ARCH=		*
COMMENT=		simple WSGI framework for small web applications

MODPY_EGG_VERSION=	0.12.7
DISTNAME=		bottle-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel www

HOMEPAGE=		http://bottlepy.org/docs/dev/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=b/bottle/}

MODULES=		lang/python

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} servertest.py \
		127.0.0.1 40892

.include <bsd.port.mk>
