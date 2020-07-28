# $OpenBSD$

COMMENT =		Display keypresses on screen

DISTNAME =		screenkey-20200728

CATEGORIES =		x11

HOMEPAGE =		https://www.thregr.org/~wavexx/software/screenkey/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# GPLv3
PERMIT_PACKAGE =	Yes

#MASTER_SITES =		https://www.thregr.org/~wavexx/software/screenkey/releases/
MASTER_SITES =		https://tratt.net/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-distutils-extra${MODPY_FLAVOR} \
                        textproc/intltool
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR} \
			x11/py-xlib${MODPY_FLAVOR}

WRKDIST =		${WRKDIR}/screenkey

.include <bsd.port.mk>
