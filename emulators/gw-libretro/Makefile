# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	Game & Watch core for retroarch

DISTNAME =	gw-libretro-1.6.2

GH_ACCOUNT =	libretro
GH_PROJECT =	gw-libretro
GH_COMMIT =	6eacbdbb45172164ef09eec609a502fa17647323

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
