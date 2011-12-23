# $OpenBSD$

SHARED_ONLY =	Yes

COMMENT =	Qt-based C++ library for the Last.fm webservices

DISTNAME =	liblastfm-0.3.3
CATEGORIES =	audio devel net

HOMEPAGE =	http://github.com/mxcl/liblastfm
MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

SHARED_LIBS +=	lastfm			0.3
SHARED_LIBS +=	lastfm_fingerprint	0.3

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes 
PERMIT_PACKAGE_FTP =		Yes 
PERMIT_DISTFILES_CDROM =	Yes 
PERMIT_DISTFILES_FTP =		Yes 

MASTER_SITES =	http://www.ohvost.ru/dnl/
WRKDIST =	${WRKDIR}/mxcl-liblastfm-f0b3239

WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += fftw3f m samplerate stdc++

LIB_DEPENDS +=	audio/libsamplerate \
		math/fftw3,float

MODULES =		lang/ruby \
			x11/qt4
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

MODRUBY_RUNDEP =	No

# __tests is built as part of 'all', but doesn't really run any tests
NO_REGRESS =	Yes

pre-configure:
	perl -pi -e 's,(\b|!)(/usr/bin/)?ruby\b,\1${RUBY},g' ${WRKSRC}/configure
	perl -pi -e 's,/usr/bin/ruby\b|ruby(\s+[\w-]),${RUBY}\1,g' ${WRKSRC}/admin/*.rb

.include <bsd.port.mk>
