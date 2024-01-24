COMMENT =	Open source version of the Serious Sam Alpha

V=		1.5.3c

DIST_TUPLE =	github tx00100xt SeriousSamAlphaRemake ${V} .
PKGNAME =	serioussam-alpha-${V}

CATEGORIES =	games

MAINTAINER =	Alexander Pavlov <t.x00100x.t@yandex.ru>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  ${COMPILER_LIBCXX} SDL2 c m pthread z

MODULES =	devel/cmake

# c++14
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DUSE_SYSTEM_INSTALL=ON -DTFE=TRUE \
		-DCMAKE_BUILD_TYPE=Release

BUILD_DEPENDS =	devel/bison \
		devel/sdl2

RUN_DEPENDS =	games/serioussam

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/Sources

post-install:
	${INSTALL_MAN} ${WRKDIST}/man/serioussam-alpha.1 \
		${PREFIX}/man/man1/serioussam-alpha.1

.include <bsd.port.mk>
