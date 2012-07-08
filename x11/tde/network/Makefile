# $OpenBSD$

COMMENT =		Trinity Desktop Environment, network applications

DISTNAME =		kdenetwork-${TDE_V}

#SHARED_LIBS =		???

#WANTLIB =		???

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
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

.include <bsd.port.mk>
