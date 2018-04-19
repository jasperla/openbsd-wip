# $OpenBSD$

COMMENT =	dd(1) replacement utility from Sortix OS
DISTNAME =	rw-portable-1.0
PKGNAME =	${DISTNAME:S/portable-//}
CATEGORIES =	sysutils

HOMEPAGE =	https://sortix.org/rw/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://sortix.org/rw/release/

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
