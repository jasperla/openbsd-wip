# $OpenBSD: Makefile,v 1.45 2018/01/22 21:40:32 kili Exp $

COMMENT-main =	liberalised reimplementation of cpp in Haskell
COMMENT-lib =	cpphs library

DISTNAME =	cpphs-1.20.8
PKGNAME-main =	${DISTNAME}
PKGNAME-lib =	hs-${DISTNAME}
REVISION-lib =	1
CATEGORIES =	devel

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		${WANTLIB} c m pthread

SUBST_VARS +=		DISTNAME

WANTLIB-main +=		util
MODULES =		lang/ghc
LIB_DEPENDS +=		converters/libiconv
WANTLIB +=		iconv
MODGHC_BUILD =		hackage cabal haddock register
MODGHC_PACKAGE_KEY =	CAhyblFbUl7LVxUf712YKZ
LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-main =
LIB_DEPENDS-lib =
RUN_DEPENDS-lib =	devel/hs-old-locale \
			devel/hs-old-time \
			lang/ghc=${MODGHC_VER} \
			textproc/hs-polyparse>=1.9
BUILD_DEPENDS +=	${RUN_DEPENDS-lib}
WANTLIB-lib =
DIST_SUBDIR =

post-install:
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
