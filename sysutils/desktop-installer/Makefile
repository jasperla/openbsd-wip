COMMENT =		Quickly configure a OpenBSD desktop system

V =			1.0.0
COMMIT =		3107aaa91e94157e74ecbbfd9e1adfe839c49a6d
PKGNAME =		desktop-installer-${V}

DIST_TUPLE =		github outpaddling desktop-installer ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		http://acadix.biz/desktop-installer.php

# 2BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		archivers/xz \
			devel/git devel/gmake \
			graphics/feh \
			net/avahi \
			sysutils/consolekit \
			sysutils/auto-admin \
			x11/dbus x11/tk/8.6 

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/OpenBSD/desktop-installer ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/OpenBSD/XenoDM/xenodmshutdown ${PREFIX}/sbin
	mkdir -p ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/OpenBSD/XenoDM/openbsd-background.jpg \
		${PREFIX}/share/pixmaps/openbsd-background.jpg
	${INSTALL_MAN} ${WRKSRC}/OpenBSD/desktop-installer.man \
		${PREFIX}/man/man1/desktop-installer.1
	mkdir -p ${PREFIX}/share/desktop-installer
	cp -R ${WRKSRC}/Common/* ${PREFIX}/share/desktop-installer/
	cp -R ${WRKSRC}/OpenBSD/* ${PREFIX}/share/desktop-installer/

.include <bsd.port.mk>
