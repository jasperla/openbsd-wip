# $OpenBSD$

COMMENT =		networked Star Trek strategy game

V =			3.3.1
DISTNAME =		netrek-client-cow-${V}
PKGNAME =		netrek-client-${V}

WANTLIB +=		Imlib2 SDL SDL_mixer X11 Xext Xpm Xxf86vm c freetype
WANTLIB +=		gmp m pthread z

MASTER_SITES =		${HOMEPAGE}/files/COW/

# BSD-like
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

LIB_DEPENDS =		devel/gmp \
			devel/sdl-mixer \
			graphics/imlib2
RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CFLAGS=-pthread LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/netrek-client-cow.desktop

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/pixmaps
	chmod -R ${SHAREMODE} ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
