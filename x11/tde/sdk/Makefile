# $OpenBSD$

COMMENT =		Trinity Desktop environment, developer extensions

V =			${TDE_V}
DISTNAME =		kdesdk-${V}

SHARED_LIBS +=  cvsservice                2.0 # 0.1
SHARED_LIBS +=  kbabelcommon              7.0 # 3.2
SHARED_LIBS +=  kbabeldictplugin          5.0 # 1.2

CATEGORIES =		x11 x11/tde devel

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype idn jpeg kabc kdecore kdefx kdeprint kdesu
WANTLIB += kdeui khtml kio kjs kparts kresources ktexteditor kutils
WANTLIB += kwalletclient m pthread stdc++ tqt util vcard z

MODULES =		x11/tde \
			devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_ARGS +=	-DBUILD_ALL=ON

WRKDIST =		${WRKDIR}/kdesdk

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
