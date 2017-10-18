# $OpenBSD$

COMMENT =	emergency editor, Minix editor via DragonFly BSD
DISTNAME =	mined-20130407
CATEGORIES =	editors

HOMEPAGE =	https://www.dragonflybsd.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://devio.us/~bcallah/source/

FLAVORS =	static
FLAVOR ?=

.if ${FLAVOR:Mstatic}
MAKE_FLAGS =	LDFLAGS="${STATIC}"
.else
WANTLIB += c
.endif

NO_TEST =	Yes

.include <bsd.port.mk>
