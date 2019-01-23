# $OpenBSD$

COMMENT =	portable fetch utility from FreeBSD
DISTNAME =	fetch-12.0
CATEGORIES =	net

HOMEPAGE =	https://www.freebsd.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fetch

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

LIB_DEPENDS =	net/libfetch

FAKE_FLAGS =	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

NO_TEST =	Yes

.include <bsd.port.mk>
