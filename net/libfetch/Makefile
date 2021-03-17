# $OpenBSD$

COMMENT =	portable libfetch from FreeBSD
DISTNAME =	libfetch-12.0
CATEGORIES =	net

SHARED_LIBS +=	fetch                     0.0 # 0.0

HOMEPAGE =	https://www.freebsd.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ssl

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

FAKE_FLAGS =	LIBDIR="${PREFIX}/lib" MANDIR="${PREFIX}/man/man"

NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/fetch.h ${PREFIX}/include

.include <bsd.port.mk>
