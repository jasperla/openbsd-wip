# $OpenBSD: Makefile,v 1.2 2015/01/15 01:28:06 daniel Exp $

# XXX need to use Python3

COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_EGG_VERSION =	2.6.2
DISTNAME =		fs-uae-launcher-${MODPY_EGG_VERSION}
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://fs-uae.net/fs-uae/stable/${MODPY_EGG_VERSION}/

MODULES =		lang/python
# When updating, look for bundled libraries that are already in ports.
# E.g. OpenGL and py-six. Patch them away and add as RUN_DEPENDS.
#
# XXX has a bundled oyoyo-0.0.0dev.
# When and if that becomes more mature, package it separately.
RUN_DEPENDS =		emulators/fs-uae \
			x11/py-wxPython \
			devel/pygame \
			devel/py-six \
			x11/py-qt5 \
			graphics/py-opengl \
			devel/py-six

NO_TEST =		Yes

.include <bsd.port.mk>
