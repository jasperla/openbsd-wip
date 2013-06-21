# $OpenBSD$

COMMENT =	Python modules for monitoring filesystem changes
MODPY_EGG_VERSION =	0.9.4
DISTNAME =	pyinotify-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://pyinotify.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MASTER_SITES =	http://devio.us/~bcallah/source/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/libinotify

.include <bsd.port.mk>
