# $OpenBSD$

GH_ACCOUNT =	syncthing
GH_PROJECT =	syncthing
GH_TAGNAME =	v0.12.22
COMMENT =	open decentralized synchronization utility
CATEGORIES =	sysutils net www
HOMEPAGE =	https://syncthing.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_TYPE =		bin

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go \
		-version ${GH_TAGNAME} -no-upgrade

do-test:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/syncthing ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/*.{1,5,7} ${PREFIX}/man/

.include <bsd.port.mk>
