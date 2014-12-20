# $OpenBSD: Makefile,v 1.25 2013/03/11 11:41:28 espie Exp $

COMMENT=	Python module for GnuPG interface

VERSION=	0.3.7
DISTNAME=	python-gnupg-${VERSION}
PKGNAME=	py-pygnupg-${VERSION}

#REVISION=	6

CATEGORIES=    	security devel

HOMEPAGE=	http://packages.python.org/python-gnupg/index.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=p/python-gnupg/}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/gnupg

NO_TEST=	Yes

.include <bsd.port.mk>
