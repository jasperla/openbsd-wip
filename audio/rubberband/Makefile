# $OpenBSD$

COMMENT =	audio time-stretching and pitch-shifting library

V = 		1.8.1
DISTNAME =	v${V}
PKGNAME =	rubberband-${V}
SHARED_LIBS =	rubberband 0.0 # 2.1.0
CATEGORIES =	audio
HOMEPAGE =	https://bitbucket.org/breakfastquay/rubberband

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c fftw3 m pthread samplerate sndfile stdc++ vamp-sdk

MASTER_SITES =		https://bitbucket.org/breakfastquay/rubberband/get/
EXTRACT_SUFX =		.tar.bz2
DIST_SUBDIR = 		rubberband
DISTFILES =		v${V}${EXTRACT_SUFX}

LIB_DEPENDS =		audio/libsamplerate \
			audio/libsndfile \
			audio/vamp-plugin-sdk \
			audio/ladspa \
			math/fftw3
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
WRKDIST =		${WRKDIR}/breakfastquay-rubberband-d4911a276d96

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
