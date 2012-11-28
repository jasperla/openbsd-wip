# $OpenBSD$

SHARED_ONLY =	Yes

COMMENT =	Qt-based C++ library for the Last.fm webservices
V =		1.0.3
DISTNAME =	$V
PKGNAME =	liblastfm-$V
CATEGORIES =	audio devel net

HOMEPAGE =	http://github.com/lastfm/liblastfm
MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

SHARED_LIBS =	lastfm			1.0
SHARED_LIBS +=	lastfm_fingerprint	1.0

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${HOMEPAGE}/archive/
EXTRACT_SUFX =	.zip
WRKDIST =	${WRKDIR}/${PKGNAME}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += fftw3f c m pthread samplerate stdc++

LIB_DEPENDS =	audio/libsamplerate \
		math/fftw3,float

MODULES =		devel/cmake x11/qt4

MODRUBY_RUNDEP =	No

.include <bsd.port.mk>
