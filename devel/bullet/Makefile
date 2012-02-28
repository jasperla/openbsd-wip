# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		physics library

V =			2.79
DISTNAME =		bullet-${V}-rev2440
PKGNAME =		bullet-${V}

SHARED_LIBS +=  BulletCollision           0.0 # 2.79
SHARED_LIBS +=  BulletDynamics            0.0 # 2.79
SHARED_LIBS +=  BulletMultiThreaded       0.0 # 2.79
SHARED_LIBS +=  BulletSoftBody            0.0 # 2.79
SHARED_LIBS +=  BulletSoftBodySolvers_CPU 0.0 # 2.79
SHARED_LIBS +=  BulletSoftBodySolvers_OpenCL_Mini 0.0 # 2.79
SHARED_LIBS +=  LinearMath                0.0 # 2.79
SHARED_LIBS +=  MiniCL                    0.0 # 2.79

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

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DBUILD_SHARED_LIBS=ON \
			-DBUILD_CPU_DEMOS=OFF \
			-DBUILD_DEMOS=OFF \
			-DBUILD_EXTRAS=OFF \
			-DINSTALL_LIBS=ON \
			-DCMAKE_EXTRA_LINK_FLAGS="-pthread"

NO_REGRESS =		Yes

CFLAGS +=		-I${X11BASE}/include
WRKDIST =		${WRKDIR}/bullet-${V}

post-extract:
	perl -pi -e 's/\015//g' \
	${WRKSRC}/src/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC10/*

.include <bsd.port.mk>
