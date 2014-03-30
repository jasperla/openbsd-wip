# $OpenBSD$

ONLY_FOR_ARCHS=	i386 amd64
CATEGORIES=	games x11
COMMENT=	Wolfenstein Enemy Territory (ET Legacy)

HOMEPAGE=	http://www.etlegacy.com/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

V=		2.71rc3
DISTNAME=	etlegacy-${V}
MASTER_SITES=	https://github.com/etlegacy/
DISTFILES =	etlegacy-{etlegacy/archive/v}${V}${EXTRACT_SUFX}

LIB_DEPENDS=	devel/sdl \
		graphics/jpeg \
		graphics/glew \
		net/curl \
		audio/libvorbis
BUILD_DEPENDS=	archivers/zip
RUN_DEPENDS=	games/enemy-territory-data \
		devel/desktop-file-utils

WANTLIB=	GL GLEW GLU ICE SDL SM X11 Xext c curl jpeg m ogg pthread \
		vorbis vorbisfile
WANTLIB+=	${MODLUA_WANTLIB}

MODULES=	devel/cmake \
		lang/lua

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
