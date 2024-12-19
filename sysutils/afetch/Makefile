COMMENT =		simple system info written in C
V =			2.2.0
PKGNAME =		afetch-$V

DIST_TUPLE +=		github 13-CF afetch V$V .

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/13-CF/afetch

MAINTAINER =		izzy Meyer <izder456@disroot.org>

WANTLIB +=	c pthread

COMPILER =	base-clang ports-gcc base-gcc

# GPL v3+
PERMIT_PACKAGE =	Yes

ALL_TARGET =		afetch

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/afetch ${PREFIX}/bin

.include <bsd.port.mk>
