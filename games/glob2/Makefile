# $OpenBSD$

COMMENT =		innovative strategy game

DISTNAME =		glob2-0.9.4.4

CATEGORIES =		games x11

HOMEPAGE =		http://www.globulation2.org/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU SDL SDL_image SDL_net SDL_ttf boost_thread-mt
WANTLIB += c fribidi m ogg portaudio pthread speex stdc++ vorbis
WANTLIB += vorbisfile z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=/glob2/0.9.4/}

MODULES =		devel/scons

MODSCONS_ENV += 	CXXFLAGS="-D_POSIX_THREADS -I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LINKFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib \
				-pthread -logg -lvorbis -lstdc++" \
			BINDIR="${PREFIX}/bin" \
			DATADIR="${LOCALBASE}/share/glob2" \
			INSTALLDIR="${PREFIX}/share" \
			--portaudio=true

LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-net \
			devel/sdl-ttf \
			devel/boost \
			devel/fribidi \
			audio/portaudio-svn \
			audio/speex \
			audio/libvorbis
RUN_DEPENDS = 		devel/desktop-file-utils

pre-patch:
	@find ${WRKSRC} -name *.orig -exec rm {} \;
	@find ${WRKSRC} -name *~ -exec rm {} \;
post-patch:
	@perl -pi -e 's|Options|Variables|g' \
		${WRKSRC}/SConstruct
	@perl -pi -e 's|BoolOption|BoolVariable|g' \
		${WRKSRC}/SConstruct

.include <bsd.port.mk>
