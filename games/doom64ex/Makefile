# $OpenBSD$

COMMENT =	reimplementation of Doom64 for PC
DISTNAME =	doom64ex-2.5pl1

GH_ACCOUNT =	svKaiser
GH_PROJECT =	Doom64EX
GH_COMMIT =	03a5e6a5a3a14d66886f62b72431b37ef7336706

CATEGORIES =	games

HOMEPAGE =	https://doom64ex.wordpress.com/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2
PERMIT_PACKAGE =  yes

WANTLIB += GL GLU SDL2 SDL2_net c fluidsynth m png z ${COMPILER_LIBCXX}

LIB_DEPENDS =	devel/sdl2 \
		devel/sdl2-net \
		graphics/png \
		audio/fluidsynth

# using ports gcc silences all warnings, better to just go with that?
#COMPILER =	ports-gcc
MODULES =	devel/cmake

# use ports fluidsynth
CONFIGURE_ARGS =	-DENABLE_SYSTEM_FLUIDSYNTH=ON

# fix installation path for doom64ex.pk3
post-patch:
	@sed -i 's,share/games/doom64ex,share/doom64ex,' \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_MAN} ${WRKSRC}/distrib/doom64ex.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
