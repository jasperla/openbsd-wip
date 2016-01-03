#	$OpenBSD$

CATEGORIES=	games x11
COMMENT=	Doom 3 BFG Edition

V =		1.0.3
REVISION =	0
PKGNAME=	rbdoom3-bfg-$V
HOMEPAGE=	https://github.com/RobertBeckebans/RBDOOM-3-BFG

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT =	RobertBeckebans
GH_PROJECT =	RBDOOM-3-BFG
GH_TAGNAME =	$V

WANTLIB += GL GLEW GLU SDL2 avcodec avformat avutil c m openal png
WANTLIB += pthread swscale z

MODULES=	devel/cmake gcc4
MODGCC4_LANGS=	c++
MODGCC4_ARCHS=	*
WRKSRC=		${WRKDIST}/neo

LIB_DEPENDS =	audio/openal \
		graphics/ffmpeg \
		devel/sdl2 \
		graphics/glew \
		graphics/png

# -DUSE_SYSTEM_LIBJPEG requires jpegint.h
CONFIGURE_ARGS=	-DUSE_SYSTEM_ZLIB:Bool=True \
		-DUSE_SYSTEM_LIBPNG:Bool=True \
		-DUSE_SYSTEM_LIBGLEW:Bool=True

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/RBDoom3BFG ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/RBDoom3BFG
	${INSTALL_DATA_DIR} ${PREFIX}/share/RBDoom3BFG/base

.include <bsd.port.mk>
