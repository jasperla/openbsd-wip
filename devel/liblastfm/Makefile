# $OpenBSD$
COMMENT =	Qt C++ library for the Last.fm webservices

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

VERSION =	0.3.3
PKGNAME =	liblastfm-${VERSION}
DISTNAME =	mxcl-liblastfm-${VERSION}-0-gf0b3239
MASTER_SITES =	https://github.com/mxcl/liblastfm/tarball/master/

WRKDIST =	${WRKDIR}/mxcl-liblastfm-1c739eb

CATEGORIES =	devel

SHARED_LIBS =	lastfm 0.3
SHARED_LIBS +=	lastfm_fingerprint 0.3

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes 
PERMIT_PACKAGE_FTP =		Yes 
PERMIT_DISTFILES_CDROM =	Yes 
PERMIT_DISTFILES_FTP =		Yes 

BUILD_DEPENDS =		audio/libsamplerate \
			math/fftw3 \
			lang/ruby/1.8

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
