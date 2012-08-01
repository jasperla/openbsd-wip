# $OpenBSD$

COMMENT =		Trinity Desktop Environment, network applications

DISTNAME =		kdenetwork-${TDE_V}

SHARED_LIBS +=  kopete                    3.0 # 1.0
SHARED_LIBS +=  kopete_videodevice        2.0 # 1.0
SHARED_LIBS +=  rss                       3.0 # 1.0

WANTLIB += DCOP ICE SM X11 Xcomposite Xext Xrender Xtst c expat
WANTLIB += fontconfig freetype idn jpeg kabc kdecore kdefx kdeprint
WANTLIB += kdesu kdeui kdnssd khtml kio kjs knewstuff kparts kresources
WANTLIB += kutils kwalletclient m pthread stdc++ tqt util vcard
WANTLIB += z

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			security/qca-tls
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DBUILD_WIFI=OFF \
			-DWITH_WEBCAM=ON \
			-DWITH_ARTS=ON

WRKDIST =		${WRKDIR}/kdenetwork

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
