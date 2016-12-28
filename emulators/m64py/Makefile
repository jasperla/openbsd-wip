# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		frontend for the mupen64plus N64 emulator

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		m64py-${MODPY_EGG_VERSION}

CATEGORIES =		emulators

HOMEPAGE =		http://m64py.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/mupen64plus/mupen64plus-ui-python/releases/download/${MODPY_EGG_VERSION}/

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			meta/mupen64plus \
			x11/py-qt5

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKDIST}/src/m64py/loader.py \
		${WRKDIST}/src/m64py/platform.py

.include <bsd.port.mk>
