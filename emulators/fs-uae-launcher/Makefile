# $OpenBSD: Makefile,v 1.2 2015/01/15 01:28:06 daniel Exp $

COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_EGG_VERSION =	2.8.3
DISTNAME =		fs-uae-launcher-${MODPY_EGG_VERSION}
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

# https://fs-uae.net/stable/2.8.3/fs-uae-launcher-2.8.3.tar.gz
MASTER_SITES =		${HOMEPAGE}/fs-uae/stable/${MODPY_EGG_VERSION}/

# Python 3.3 or newer
MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# XXX get rid of embedded versions (see setup.py)
RUN_DEPENDS =		emulators/fs-uae \
			devel/py-six,python3 \
			x11/py-qt5,python3

NO_TEST =		Yes

.include <bsd.port.mk>
