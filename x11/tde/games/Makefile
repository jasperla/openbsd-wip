# $OpenBSD$

COMMENT =		Trinity Desktop Environment, games

DISTNAME =		kdegames-${TDE_V}

SHARED_LIBS +=  atlantic                  5.0 # 3.0
SHARED_LIBS +=  atlantikclient            5.0 # 3.0
SHARED_LIBS +=  atlantikui                5.0 # 3.0
SHARED_LIBS +=  kdegames                  5.0 # 3.0
SHARED_LIBS +=  kolf                      5.0 # 3.0

CATEGORIES =		x11 x11/tde games

WANTLIB += DCOP ICE SM X11 Xext Xfixes Xrender Xt artsflow artsflow_idl
WANTLIB += artskde audiofile c expat fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gthread-2.0 kdecore kdefx kdeprint kdeui
WANTLIB += kdnssd kio kmedia2_idl ktexteditor m mad mcop ogg pcre
WANTLIB += png pthread qtmcop sndio soundserver_idl stdc++ tqt
WANTLIB += vorbis vorbisenc vorbisfile xcb z

MODULES =		x11/tde \
			devel/gettext
BUILD_DEPENDS =		x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		${MODTDE_MAKE_FLAGS}
#MAKE_ENV =		${MODTDE_MAKE_ENV}
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	autoconf
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${MODTDE_CONFIGURE_ARGS}
#CONFIGURE_ENV =		LOCALBASE=LOCAL
#AUTOCONF_VERSION =	2.61
#AUTOMAKE_VERSION =	1.10

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/kdegames
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

#post-patch:
#	${MODTDE_post-patch}

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
