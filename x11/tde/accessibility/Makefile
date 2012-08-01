# $OpenBSD$

COMMENT =		Trinity Desktop Environment, accessibility aids

DISTNAME =		kdeaccessibility-${TDE_V}

SHARED_LIBS +=  KTTSD_Lib                 0.0 # 0.1
SHARED_LIBS +=  kttsd                     0.0 # 1.0

WANTLIB += DCOP ICE SM X11 Xext Xi Xtst artsflow artsflow_idl
WANTLIB += artskde c kdecore kdefx kdeprint kdeui kio kparts kspell
WANTLIB += ktexteditor kutils m png pthread soundserver_idl stdc++
WANTLIB += tqt xcb z

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-alsa

WRKDIST =		${WRKDIR}/kdeaccessibility

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
