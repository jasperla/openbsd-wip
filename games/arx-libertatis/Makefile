# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	cross-platform port of Arx Fatalis, a first-person RPG
CATEGORIES =	games x11

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

GH_ACCOUNT =	arx
GH_PROJECT =	ArxLibertatis
GH_TAGNAME =	1.1.2-r1

# GPLv3+, fonts are SOL OFL 1.1 license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL c freetype m openal
WANTLIB += z

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake #\
		#x11/qt5

LIB_DEPENDS =	audio/openal \
		devel/sdl \
		graphics/glew

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DCMAKE_EXE_LINKER_FLAGS="-lpthread" \
			-DBUILD_CRASHREPORTER=OFF \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/arx

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/arx ${PREFIX}/bin/arx

.include <bsd.port.mk>
