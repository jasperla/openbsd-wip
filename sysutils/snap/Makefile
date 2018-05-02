# $OpenBSD$

COMMENT = 	OpenBSD upgrade tool

GH_ACCOUNT = 	qbit
GH_PROJECT = 	snap
GH_TAGNAME = 	1.1.3

CATEGORIES = 	sysutils

# ISC
PERMIT_PACKAGE_CDROM = 	Yes

NO_BUILD = 	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/snap ${PREFIX}/bin/snap
	${INSTALL_MAN} ${WRKSRC}/snap.8 ${PREFIX}/man/man8/snap.8

.include <bsd.port.mk>
