# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:08 sthen Exp $

COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_EGG_VERSION =	3.0.5
DISTNAME =		fs-uae-launcher-${MODPY_EGG_VERSION}
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://fs-uae.net/stable/${MODPY_EGG_VERSION}/

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODULES =		lang/python
RUN_DEPENDS =		emulators/fs-uae \
			devel/pygame${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
