# $OpenBSD$

CATEGORIES =		audio
COMMENT =		common interface to speech synthesis 
DISTNAME =		speech-dispatcher-0.7.1
HOMEPAGE =		http://devel.freebsoft.org/speechd

SHARED_LIBS +=	speechd			0.0 # 5.0
SHARED_LIBS +=	sdaudio			0.0 # 2.4

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

MASTER_SITES =		http://devel.freebsoft.org/pub/projects/speechd/

MODULES =		lang/python

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		audio/festival/core \
			audio/flite \
			audio/libao \
			devel/dotconf \
			devel/glib

CONFIGURE_STYLE =	gnu autoconf automake
AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
SEPARATE_BUILD =	simple
USE_LIBTOOL =		Yes
#USE_GROFF =		Yes

CONFIGURE_ARGS +=	--with-flite \
			--with-libao \
			--without-alsa \
			--without-espeak \
			--without-ibmtts \
			--without-ivona \
			--without-nas \
			--without-oss \
			--without-pulse

COPTS +=		-I${LOCALBASE}/include -L${LOCALBASE}/lib -lsndio

#REGRESS_DEPENDS =	???
#REGRESS_IS_INTERACTIVE =	Yes
#NO_REGRESS =		Yes
#REGRESS_TARGET =	???

post-patch:
	(cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION}  automake)

post-install:
	mv ${WRKINST}/etc/speech-dispatcher ${PREFIX}/share/examples/speech-dispatcher

.include <bsd.port.mk>
