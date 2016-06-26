# $OpenBSD:$

COMMENT =	subdomain scanner

VERSION = 	3.0.0

DISTNAME =	knockpy-${VERSION}

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

CATEGORIES =	security

# XXX TODO GPL3 like some py code?
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT =		guelfoweb
GH_PROJECT =		knock
GH_TAGNAME = 		v${VERSION}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		net/py-dnspython

.include <bsd.port.mk>
