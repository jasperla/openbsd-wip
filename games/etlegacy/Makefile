# $OpenBSD$

ONLY_FOR_ARCHS=	i386 amd64
CATEGORIES=	games x11
COMMENT=	Wolfenstein Enemy Territory (ET Legacy)

HOMEPAGE=	http://www.etlegacy.com/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

V=		2.74
DISTNAME=	etlegacy-${V}
GH_ACCOUNT=	etlegacy
GH_PROJECT=	etlegacy
GH_TAGNAME=	v${V}

LIB_DEPENDS=	devel/sdl2 \
		graphics/jpeg \
		graphics/glew \
		net/curl \
		audio/libvorbis
BUILD_DEPENDS=	archivers/zip
RUN_DEPENDS=	games/enemy-territory-data \
		devel/desktop-file-utils

MODULES=	devel/cmake \
		lang/lua

WANTLIB=	GL GLEW GLU SDL2 c curl freetype iconv jpeg m \
		ogg pthread stdc++ vorbis vorbisfile
WANTLIB+=	${MODLUA_WANTLIB}

CONFIGURE_ARGS =	-DINSTALL_DEFAULT_MODDIR:String=share/enemy-territory \
			-DINSTALL_DEFAULT_BINDIR:String=share/enemy-territory \
			-DBUILD_PAK3_PK3:Bool=True \
			-DBUILD_MOD_PK3:Bool=True

# GPLv3+additions
PERMIT_PACKAGE_CDROM=		Yes

post-install:
	cp ${FILESDIR}/etlegacy.sh ${WRKSRC}/
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKSRC}/etlegacy.sh
	${INSTALL_SCRIPT} ${WRKSRC}/etlegacy.sh ${PREFIX}/bin/etlegacy

.include <bsd.port.mk>
