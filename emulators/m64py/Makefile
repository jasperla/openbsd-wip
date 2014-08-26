# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		frontend for the mupen64plus N64 emulator

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		m64py-${MODPY_EGG_VERSION}

CATEGORIES =		emulators

HOMEPAGE =		http://m64py.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=m64py/}

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt4
RUN_DEPENDS =		devel/desktop-file-utils \
			meta/mupen64plus \
			misc/shared-mime-info \
			x11/gtk+2,-guic \
			x11/py-qt4

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKDIST}/src/m64py/loader.py \
		${WRKDIST}/src/m64py/platform.py

.include <bsd.port.mk>
