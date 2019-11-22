# $OpenBSD: Makefile,v 1.6 2019/07/12 20:51:15 sthen Exp $

COMMENT =	featherweight lemon-scented bar with xft support

DISTNAME =	lemonbar-xft-20190916

GH_ACCOUNT =	krypt-n
GH_PROJECT =	bar
GH_COMMIT =	00a3fe6f3485203896156480e86014136749a221

CATEGORIES =	x11

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c xcb xcb-randr xcb-xinerama

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		CFLAGS="-I${XBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

USE_GMAKE =		Yes

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include

ALL_TARGET =		all doc

SUBST_VARS =		X11BASE

pre-configure:
	sed -i '/^CFLAGS/s/-Os //' ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lemonbar-xft/
	${INSTALL_PROGRAM} ${WRKSRC}/lemonbar ${PREFIX}/bin/lemonbar-xft
	${INSTALL_MAN} ${WRKSRC}/lemonbar.1 ${PREFIX}/man/man1/lemonbar-xft.1
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/lemonbar-xft

.include <bsd.port.mk>
