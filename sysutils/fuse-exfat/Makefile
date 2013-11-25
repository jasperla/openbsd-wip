# $OpenBSD$

COMMENT =		exFAT filesystem via FUSE

DISTNAME =		fuse-exfat-1.0.1

CATEGORIES =		sysutils

HOMEPAGE =		https://code.google.com/p/exfat/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse

MASTER_SITES =		https://exfat.googlecode.com/files/

MODULES =		devel/scons

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fuse/mount.exfat-fuse ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/fuse/mount.exfat-fuse.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
