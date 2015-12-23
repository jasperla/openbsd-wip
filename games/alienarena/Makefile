# $OpenBSD$

ONLY_FOR_ARCHS= i386 amd64

MULTI_PACKAGES= -main -data

COMMENT-main=	Alien Arena
COMMENT-data=	Alien Arena data

N=	alienarena
V=	7.66
DATE=	20130827
PKGNAME-main=	$N-$V
PKGNAME-data=	$N-data-$V
DISTNAME=	$N-$V-linux${DATE}
WRKDIST=	${WRKDIR}/$N-$V

CATEGORIES=	games x11
MASTER_SITES=	http://red.planetarena.org/files/ \
		http://icculus.org/alienarena/Files/
HOMEPAGE=	http://red.planetarena.org/

PKG_ARCH-data=	*

# GPLv2+ (code) + no commercial use (data)
PERMIT_PACKAGE_CDROM=	no commercial use
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS-main=	graphics/jpeg \
			net/curl \
			audio/libvorbis

RUN_DEPENDS-main=	audio/openal \
			${BASE_PKGPATH},-data

WANTLIB-main=	X11 Xxf86dga Xxf86vm c curl freetype jpeg m \
		ogg pthread stdc++ vorbis vorbisfile z

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-xf86vm --with-xf86dga
USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.69

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/source/alienarena ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/source/alienarena-ded ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	cp -R ${WRKDIST}/data1 ${PREFIX}/share/${N}
	cp -R ${WRKDIST}/botinfo ${PREFIX}/share/${N}
	cp -R ${WRKDIST}/arena ${PREFIX}/share/${N}

.include <bsd.port.mk>
