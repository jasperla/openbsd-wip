# $OpenBSD$

COMMENT =	port of NetBSD sh(1) to OpenBSD
DISTNAME =	ash-9.0
CATEGORIES =	shells

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses edit

MASTER_SITES =	https://github.com/ibara/ash/releases/download/${DISTNAME}/

# Uses NetBSD-specific libraries/functions.
NO_TEST =	Yes

do-configure:
	cd ${WRKSRC} && make obj

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj/ash ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ash.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
