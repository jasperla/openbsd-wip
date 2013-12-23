# $OpenBSD$

COMMENT =	Qt4 GUI for wpa_supplicant
DISTNAME =	wpa_gui-2.0
DISTFILES =	wpa_supplicant-2.0.tar.gz
CATEGORIES =	security net x11

HOMEPAGE =	http://hostap.epitest.fi/wpa_supplicant/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	http://hostap.epitest.fi/releases/

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread stdc++

MODULES =	x11/qt4

RUN_DEPENDS =	security/wpa_supplicant

USE_GMAKE =	Yes
MAKE_ENV =	CFLAGS="${CFLAGS}" CC="${CC}"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/wpa_supplicant-2.0
WRKSRC =	${WRKDIST}/wpa_supplicant/wpa_gui-qt4

do-build:
	cd ${WRKSRC} && qmake4 wpa_gui.pro && ${MAKE_PROGRAM}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_gui ${PREFIX}/sbin

.include <bsd.port.mk>
