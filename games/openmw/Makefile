# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.11.1
DISTNAME =		openmw-${V}-source
PKGNAME =		openmw-${V}

#SHARED_LIBS =		???

CATEGORIES =		games

HOMEPAGE =		http://openmw.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

MASTER_SITES =		http://openmw.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4
#RUN_DEPENDS =		???
LIB_DEPENDS =		x11/ogre \
			devel/boost \
			audio/openal \
			audio/mpg123 \
			audio/libsndfile \
			sysutils/e2fsprogs \
			devel/libtool,-ltdl \
			devel/bullet

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???

#USE_GROFF =		Yes
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

NO_REGRESS =		Yes

CFLAGS +=		-pthread

.include <bsd.port.mk>
