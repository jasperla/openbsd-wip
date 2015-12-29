#	$OpenBSD$

CATEGORIES=	games x11
COMMENT=	Doom 3 BFG Edition

V =		1.0.3
PKGNAME=	rbdoom3-bfg-$V
HOMEPAGE=	https://github.com/RobertBeckebans/RBDOOM-3-BFG

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT =	RobertBeckebans
GH_PROJECT =	RBDOOM-3-BFG
GH_TAGNAME =	$V

WANTLIB += GL GLU SDL2 avcodec avformat avutil c m openal pthread
WANTLIB += swscale

MODULES=	devel/cmake gcc4
MODGCC4_LANGS=	c++
MODGCC4_ARCHS=	*
WRKSRC=		${WRKDIST}/neo

LIB_DEPENDS =	audio/openal \
		graphics/ffmpeg \
		devel/sdl2

CONFIGURE_ARGS=	-DCMAKE_BUILD_TYPE=Release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/RBDoom3BFG ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/RBDoom3BFG
	${INSTALL_DATA_DIR} ${PREFIX}/share/RBDoom3BFG/base

.include <bsd.port.mk>
