# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	rsync for cloud storage
V =		1.41
DISTNAME =	rclone-v${V}
PKGNAME =	rclone-${V}

CATEGORIES =	sysutils

HOMEPAGE =	http://rclone.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c pthread

MASTER_SITES =  https://github.com/ncw/rclone/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	github.com/ncw/rclone

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rclone ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/rclone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
