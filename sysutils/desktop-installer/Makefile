COMMENT =		Quickly configure a OpenBSD desktop system

V =			1.0.0
COMMIT =		60a20c6ae1825569ed6839eed4c558fe7e3521a3
PKGNAME =		desktop-installer-${V}

DIST_TUPLE =		github outpaddling desktop-installer ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		http://acadix.biz/desktop-installer.php

# 2BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/auto-admin

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/OpenBSD/desktop-installer ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/OpenBSD/desktop-installer.man \
		${PREFIX}/man/man1/desktop-installer.1
	mkdir -p ${PREFIX}/share/desktop-installer
	cp -R ${WRKSRC}/Common/* ${PREFIX}/share/desktop-installer/
	cp -R ${WRKSRC}/OpenBSD/* ${PREFIX}/share/desktop-installer/

.include <bsd.port.mk>
