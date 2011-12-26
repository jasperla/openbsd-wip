# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		simple and fast multimedia library

V =			1.6
DISTNAME =		SFML-${V}-sdk-linux-32
PKGNAME =		sfml-${V}

SHARED_LIBS +=  sfml-audio                0.0 # 1.6
SHARED_LIBS +=  sfml-graphics             0.0 # 1.6
SHARED_LIBS +=  sfml-network              0.0 # 1.6
SHARED_LIBS +=  sfml-system               0.0 # 1.6
SHARED_LIBS +=  sfml-window               0.0 # 1.6

CATEGORIES =		multimedia

HOMEPAGE =		http://www.sfml-dev.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# zlib/libpng
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = GL X11 Xrandr freetype m openal sndfile stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sfml/}

LIB_DEPENDS =		audio/openal \
			audio/libsndfile

FAKE_FLAGS =		DESTDIR=${DESTDIR} PREFIX=${PREFIX}
.for l v in ${SHARED_LIBS}
FAKE_FLAGS +=		LIB${l}_VERSION=${v}
MAKE_FLAGS +=		LIB${l}_VERSION=${v}
.endfor

USE_GMAKE =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/SFML-${V}

post-extract:
	find ${WRKSRC} -type f -exec perl -pi -e 's/\015//g' {} \;

.include <bsd.port.mk>
