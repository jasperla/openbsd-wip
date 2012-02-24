# $OpenBSD$

COMMENT =		physics library

V =			2.79
DISTNAME =		bullet-${V}-rev2440
PKGNAME =		bullet-${V}

CATEGORIES =		devel

HOMEPAGE =		http://bulletphysics.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# zlib
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://bullet.googlecode.com/files/
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake
BUILD_DEPENDS =		graphics/freeglut

NO_REGRESS =		Yes

CFLAGS +=		-I${X11BASE}/include
WRKDIST =		${WRKDIR}/bullet-${V}

post-extract:
	perl -pi -e 's/\015//g' \
	${WRKSRC}/src/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC10/*

.include <bsd.port.mk>
