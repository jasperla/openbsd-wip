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
#BUILD_DEPENDS =	???
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			security/qca-tls
LIB_DEPENDS =		x11/tde/libs
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DBUILD_WIFI=OFF \
			-DWITH_WEBCAM=ON \
			-DWITH_ARTS=ON
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/kdenetwork
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
