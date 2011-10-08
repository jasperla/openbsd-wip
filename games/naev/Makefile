# $OpenBSD$

COMMENT-main =		2D space trading and combat game
COMMENT-data = 		naev game data

MULTI_PACKAGES = 	-main -data
DISTNAME =		naev-0.5.0
PKGNAME-main = 		${DISTNAME}
PKGNAME-data = 		${DISTNAME:S/-/-data-/}

CATEGORIES = 		games x11

HOMEPAGE = 		http://www.naev.org/

MAINTAINER = 		Kirill Bychkov <yason@linklevel.net>

# GPLv3, GPLv2+, CC-by, CC-by-sa 3.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=naev/}
DISTFILES = 		naev-0.5.0.tar.bz2 \
			ndata-0.5.0
EXTRACT_ONLY = 		naev-0.5.0.tar.bz2

WANTLIB-main += GL SDL SDL_mixer c freetype lua m ogg png pthread vorbis
WANTLIB-main += vorbisfile xml2 z

RUN_DEPENDS-main =	devel/desktop-file-utils \
			games/naev,-data
LIB_DEPENDS-main =	devel/sdl-mixer \
			graphics/png \
			lang/lua \
			textproc/libxml

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-shave \
			--enable-debug=no \
			--enable-lua=shared \
			--without-openal

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"

NO_REGRESS =		Yes

PKG_ARCH-data = 	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naev
	${INSTALL_DATA} ${DISTDIR}/ndata-0.5.0 ${PREFIX}/share/naev/ndata

.include <bsd.port.mk>
