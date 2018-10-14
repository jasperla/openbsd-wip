# $OpenBSD$

# Upstream claims this is 64-bit only.
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =	storage expression calculator
CATEGORIES =	math sysutils

GH_ACCOUNT =	jarun
GH_PROJECT =	bcal
GH_TAGNAME =	v2.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses readline

USE_GMAKE =	Yes

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man/man1"

.include <bsd.port.mk>
