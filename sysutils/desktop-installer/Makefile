COMMENT =		Quickly configure a OpenBSD desktop system

# Suffix version with commit # from git describe --tags
V =			1.1.1
COMMIT =		03b821b1a690c3b66ee467f6c5a6b0068d07a1c2
PKGNAME =		desktop-installer-${V}

DIST_TUPLE =		github outpaddling desktop-installer ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		http://acadix.biz/desktop-installer.php

# 2BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=		sysutils/auto-admin

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
