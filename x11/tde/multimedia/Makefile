# $OpenBSD$

COMMENT =		Trinity Desktop Environment, multimedia applications

DISTNAME =		kdemultimedia-${TDE_V}

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
CONFIGURE_STYLE =	
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.10

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
MAKE_FILE =		admin/Makefile.common
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/kdemultimedia
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

post-extract:
	cp ${FILESDIR}/audioIO_sndio.cpp ${WRKSRC}/mpeglib/lib/util/audio

#post-patch:
#	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
#		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${LOCALBASE}/bin/aclocal
#	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
#		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${LOCALBASE}/bin/automake

.include <bsd.port.mk>
