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

# fs-uae-launcher has some bundled Python deps in its distfifle:
#
#  - OpenGL: We don't install. We use py-opengl from the ports tree instead.
#
#  - amitools: XXX make a port edd...
#
#  - oyoyo: At the time of writing is at version 0.0.0dev (since 2012) so it
#    hardly seems worth making a port for.
RUN_DEPENDS =		emulators/fs-uae \
			devel/pygame${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR}

# fs-uae shouldn't be installed into the system Python tree as it contains some
# modules whose names clash with unrelated modules on PyPI (arcade, workspace,
# launcher). To avoid future name clashes, we install into a separate location
# and patch the binary to update the PYTHONPATH.
FS_PYTHONPATH=${TRUEPREFIX}/share/fs-uae-launcher/python${MODPY_VERSION}
MODPY_DISTUTILS_INSTALLARGS += --install-lib=${FS_PYTHONPATH}
SUBST_VARS += FS_PYTHONPATH

post-install:
	${SUBST_CMD} ${PREFIX}/bin/fs-uae-launcher

NO_TEST =		Yes

.include <bsd.port.mk>
