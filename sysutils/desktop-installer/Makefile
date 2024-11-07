COMMENT =		Quickly configure a OpenBSD desktop system

V =			1.0.0
COMMIT =		452b8bedb6d263b629d4416dd56326acfdb801d2
PKGNAME =		desktop-installer-${V}

DIST_TUPLE =		github izder456 desktop-installer ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		http://acadix.biz/desktop-installer.php

# 2BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		archvers/xz \
			devel/git devel/gmake \
			graphics/feh \
			sysutils/consolekit \
			sysutils/auto-admin \
			x11/dbus x11/tk

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/OpenBSD/desktop-installer ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/OpenBSD/XenoDM/xenodmshutdown ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/OpenBSD/desktop-installer.man \
		${PREFIX}/man/man1/desktop-installer.1
	mkdir -p ${PREFIX}/share/desktop-installer
	cp -R ${WRKSRC}/Common/* ${PREFIX}/share/desktop-installer/
	cp -R ${WRKSRC}/OpenBSD/* ${PREFIX}/share/desktop-installer/

.include <bsd.port.mk>
