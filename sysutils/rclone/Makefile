# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	rsync for cloud storage
GH_ACCOUNT =	ncw
GH_PROJECT =	rclone
GH_TAGNAME =	v1.36

CATEGORIES =	sysutils

HOMEPAGE =	http://rclone.org/

WANTLIB += c pthread

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/go
MODGO_TYPE =	bin

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rclone ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/rclone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
