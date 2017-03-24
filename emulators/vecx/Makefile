# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	Vectrex video game console emulator

GH_ACCOUNT =	jhawthorn
GH_PROJECT =	vecx
GH_TAGNAME =	v1.1

CATEGORIES =	emulators

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL SDL_gfx SDL_image c pthread

LIB_DEPENDS =	devel/sdl \
		devel/sdl-gfx \
		devel/sdl-image

USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}"

ALL_TARGET =	vecx

NO_TEST =	Yes

pre-configure:
	@sed -i 's|rom.dat|${PREFIX}/share/vecx/rom.dat|' ${WRKSRC}/osint.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vecx
	${INSTALL_PROGRAM} ${WRKSRC}/vecx ${PREFIX}/bin

.include <bsd.port.mk>
