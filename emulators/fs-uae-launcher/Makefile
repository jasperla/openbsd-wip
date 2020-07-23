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

# A note on bundled deps.
#
# fs-uae-launcher has some bundled Python deps in its distfifle:
#
#  - OpenGL: We don't install. We use py-opengl from the ports tree instead.
#
#  - amitools: probably niche enough to not require a separate port. If
#     another port comes along that needs amitools later, we can split it out.
#
#  - oyoyo: At the time of writing is at version 0.0.0dev (since 2012) so it
#    hardly seems worth making a port for.
#
# Note that the modules `arcade`, `workspace` and `launcher` are original
# fs-uae-launcher components. I've raised an issue asking these be prefixed
# `fs` like the other original components, as all three of these modules names
# clash with unrelated modules on PyPI.
#
# https://github.com/FrodeSolheim/fs-uae-launcher/issues/85

NO_TEST =		Yes

.include <bsd.port.mk>
