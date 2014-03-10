# $OpenBSD:$

COMMENT =		Non blocking Jabber/XMPP module for Gajim

MODPY_EGG_VERSION =	0.3
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://python-nbxmpp.gajim.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://python-nbxmpp.gajim.org/downloads/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} \
			  -root=${DESTDIR}
.include <bsd.port.mk>
