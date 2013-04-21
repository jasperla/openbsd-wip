# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		fish-themed puzzle game

V =			1.0.1
PKGNAME =		fillets-ng-${V}

CATEGORIES =		games

HOMEPAGE =		http://fillets.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c fribidi lua5.1 m
WANTLIB += pthread smpeg stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fillets/}
DISTFILES =		fillets-ng-${V}.tar.gz \
			fillets-ng-data-${V}.tar.gz

MODULES =		lang/lua
LIB_DEPENDS =		devel/fribidi \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--datadir=${PREFIX}/share/fillets-ng
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${MODLUA_INCL_DIR}" \
			LUA_CFLAGS=-I${MODLUA_INCL_DIR} \
			LUA_LIBS=${MODLUA_LIB}

WRKDIST =		${WRKDIR}/fillets-ng-${V}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fillets-ng
	cp -R ${WRKDIR}/fillets-ng-data-${V}/*/ ${PREFIX}/share/fillets-ng

.include <bsd.port.mk>
