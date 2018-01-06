# $OpenBSD$

COMMENT =	open-source re-implementation of The Elder Scrolls: Arena
DISTNAME =	opentesarena-0.6.0
CATEGORIES =	games x11

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 WildMidi c m openal

MASTER_SITES =	https://github.com/afritz1/OpenTESArena/archive/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

LIB_DEPENDS =	audio/openal \
		audio/wildmidi \
		devel/sdl2

# GitHub tarball naming weirdness
WRKDIST =	${WRKDIR}/OpenTESArena-${DISTNAME}

NO_TEST =	Yes

# No upstream install routine
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/TESArena ${PREFIX}/bin

.include <bsd.port.mk>
