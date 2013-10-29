# $OpenBSD$

COMMENT =		put videos on the Sansa Fuze

MODPY_EGG_VERSION =	0.6
DISTNAME =		video4fuze-${MODPY_EGG_VERSION}

CATEGORIES =		multimedia

HOMEPAGE =		https://code.google.com/p/video4fuze/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://video4fuze.googlecode.com/files/

MODULES =		lang/python
BUILD_DEPENDS =		devel/desktop-file-utils
RUN_DEPENDS =		x11/mplayer \
			x11/py-qt4 \
			graphics/py-Imaging \
			multimedia/fuzemux
MODPY_ADJ_FILES =	fuze.py info.py p2fuze.py setup.py video4fuze.pyw \
			vthumb.py

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/dist/fuze ${WRKSRC}/dist/video4fuze

.include <bsd.port.mk>
