# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	Game & Watch core for retroarch

DISTNAME =	gw-libretro-1.6.3.1

GH_ACCOUNT =	libretro
GH_PROJECT =	gw-libretro
GH_COMMIT =	1046a6ba3f73cc7949ca68ae172712b2ffc9b6f1

CATEGORIES =	emulators

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_FILE =	Makefile.libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/gw_libretro.so ${PREFIX}/lib/libretro

.include <bsd.port.mk>
