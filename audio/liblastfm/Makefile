# $OpenBSD$
SHARED_ONLY =	Yes

CATEGORIES =	audio devel net
COMMENT =	Qt-based C++ library for the Last.fm webservices
DISTNAME =	liblastfm-0.3.3
HOMEPAGE =	http://github.com/mxcl/liblastfm
MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

SHARED_LIBS +=	lastfm			0.3
SHARED_LIBS +=	lastfm_fingerprint	0.3

MASTER_SITES =	http://www.ohvost.ru/dnl/
WRKDIST =	${WRKDIR}/mxcl-liblastfm-f0b3239

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes 
PERMIT_PACKAGE_FTP =		Yes 
PERMIT_DISTFILES_CDROM =	Yes 
PERMIT_DISTFILES_FTP =		Yes 

MODULES =		lang/ruby x11/qt4
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += fftw3f m samplerate stdc++

LIB_DEPENDS +=	audio/libsamplerate \
		math/fftw3,float

MODRUBY_RUNDEP =	No

pre-configure:
	perl -pi -e 's,(\b|!)(/usr/bin/)?ruby\b,\1${RUBY},g' ${WRKSRC}/configure
	perl -pi -e 's,/usr/bin/ruby\b|ruby(\s+[\w-]),${RUBY}\1,g' ${WRKSRC}/admin/*.rb

.include <bsd.port.mk>
