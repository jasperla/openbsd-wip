# $OpenBSD: Makefile,v 1.30 2015/06/05 12:20:38 ajacoutot Exp $

COMMENT=		rogue-like game with X11 support
COMMENT-no_x11=		rogue-like game

V =			4.0.5
V_DLDIR =		${V:C/\.[0-9]$//}
DISTNAME=		angband-${V}
CATEGORIES=     	games

HOMEPAGE=		http://rephial.org

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Multi license, including GPLv2, angband license, CC, freeware...
# The angband license contains the line "other copyrights may also apply"
PERMIT_PACKAGE_CDROM=	unclear license
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m ncurses

MASTER_SITES =		${HOMEPAGE}/downloads/${V_DLDIR}/

# They have their own autogen.sh which configures a custom m4 include path,
# so we don't use CONFIGURE_STYLE=autoconf
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV +=	"LDFLAGS=-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-private-dirs \
			--with-configpath=${PREFIX}/share/angband \
			--bindir=${PREFIX}/bin

USE_GMAKE =		Yes

FLAVORS=		no_x11 sdl
FLAVOR?=

RUN_DEPENDS =		devel/desktop-file-utils

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11
.endif

.if ${FLAVOR:Msdl}	# funky graphical mode and sounds
CONFIGURE_ARGS +=	--enable-sdl \
			--enable-sdl-mixer
PKG_ARGS +=		-Dsdl=1
LIB_DEPENDS +=		devel/sdl-mixer \
			devel/sdl-image \
			devel/sdl-ttf
WANTLIB +=		SDL SDL_image SDL_mixer SDL_ttf pthread
.else
CONFIGURE_ARGS +=	--disable-sdl-mixer	# defaults to ON
PKG_ARGS +=		-Dsdl=0
.endif

NO_TEST =		Yes

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh autogen.sh
	echo ${V} > ${WRKSRC}/version

	perl -pi -e "s,/usr/share/angband/xtra/icon,${TRUEPREFIX}/share/angband/icons," \
		${WRKSRC}/lib/icons/angband*.desktop

EXAMPLES_DIR = ${PREFIX}/share/examples/angband
DESKTOP_DIR = ${PREFIX}/share/applications
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	mv ${WRKINST}/${SYSCONFDIR}/angband/* ${EXAMPLES_DIR}

	${INSTALL_DATA_DIR} ${DESKTOP_DIR}
	mv ${PREFIX}/share/angband/icons/*.desktop ${DESKTOP_DIR}

.include <bsd.port.mk>
