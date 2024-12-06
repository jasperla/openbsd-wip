COMMENT =		Quickly configure a OpenBSD desktop system

# Suffix version with commit # from git describe --tags
V =			1.0.0.28
COMMIT =		363a5af658b25bcef1ac184fd6211cf1ca280045
PKGNAME =		desktop-installer-${V}

DIST_TUPLE =		github izder456 desktop-installer ${COMMIT} .

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
