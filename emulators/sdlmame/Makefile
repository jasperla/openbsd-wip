# $OpenBSD: Makefile,v 1.46 2015/08/11 21:43:02 jasper Exp $

# Other archs have not been tested
ONLY_FOR_ARCHS =	amd64

# i386: src/emu/cpu/i386/pentops.inc: error: integer constant is too large for 'long' type

MULTI_PACKAGES =	-main -tools

COMMENT-main =		emulates a massive variety of arcades machines
COMMENT-tools =		tools to manipulate MAME/MESS roms and disk images

V =			173

GH_ACCOUNT =		mamedev
GH_PROJECT =		mame
GH_TAGNAME =		mame0${V}

DISTNAME =		mame0${V}
PKGNAME-main =		sdlmame-0.${V}
PKGNAME-tools =		sdlmame-tools-0.${V}

CATEGORIES =		emulators games

HOMEPAGE =		http://mamedev.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_ttf X11 Xinerama c expat fontconfig freetype
WANTLIB += m pthread util z

MODULES =		lang/python \
			gcc4

MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

RUN_DEPENDS-main =	fonts/liberation-fonts
LIB_DEPENDS =		devel/sdl2-ttf

.if ${MACHINE_ARCH} == "amd64"
MAKE_ENV +=		PTR64=1
.endif

USE_GMAKE =		Yes

CONFIGURE_STYLE =	none

MAKE_FILE =		makefile

NO_TEST =		Yes

pre-configure:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mame ${PREFIX}/bin/sdlmame
.for f in chdman jedutil ldresample ldverify romcmp unidasm
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/sdlmame/keymaps
	${INSTALL_DATA} ${WRKSRC}/src/osd/sdl/keymaps/km[-_]??.txt \
	    ${PREFIX}/share/sdlmame/keymaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmame
.for f in config.txt hlsl.txt license.txt mame.txt newvideo.txt
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/sdlmame
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sdlmame
	${SUBST_DATA} ${FILESDIR}/mame.ini \
	    ${PREFIX}/share/examples/sdlmame/mame.ini
	${INSTALL_DATA} ${WRKDIR}/history.dat ${PREFIX}/share/sdlmame

.include <bsd.port.mk>
