# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		similar to bencode from the BitTorrent project

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-rencode-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=r/rencode/}

MODULES =		lang/python

BUILD_DEPENDS =		lang/cython

.include <bsd.port.mk>
