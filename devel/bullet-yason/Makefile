# $OpenBSD$

COMMENT =		collision detection and rigid body dynamics library

DISTNAME =		bullet-2.79-rev2440
PKGNAME = 		bullet-2.79

SHARED_ONLY = 		Yes

SHARED_LIBS += 	BulletCollision			0.0 # 2.77
SHARED_LIBS += 	BulletDynamics			0.0 # 2.77
SHARED_LIBS += 	BulletMultiThreaded		0.0 # 2.77
SHARED_LIBS += 	BulletSoftBody			0.0 # 2.77
SHARED_LIBS += 	BulletSoftBodySolvers_CPU	0.0 # 2.77
SHARED_LIBS +=  BulletSoftBodySolvers_OpenCL_Mini 0.0 # 2.78
SHARED_LIBS += 	LinearMath			0.0 # 2.77
SHARED_LIBS += 	MiniCL				0.0 # 2.77

CATEGORIES =		devel

HOMEPAGE =		http://bulletphysics.org/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# ZLib/libpng
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m pthread stdc++

MASTER_SITES =		http://bullet.googlecode.com/files/
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

USE_LIBTOOL =		Yes
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DBUILD_SHARED_LIBS=ON \
			-DBUILD_CPU_DEMOS=OFF \
			-DBUILD_DEMOS=OFF \
			-DBUILD_EXTRAS=OFF \
			-DINSTALL_LIBS=ON \
			-DCMAKE_CXX_FLAGS_RELEASE="-O2 -pipe \
				-I${LOCALBASE}/include -I${X11BASE}/include" \
			-DCMAKE_EXTRA_LINK_FLAGS="-pthread"

NO_REGRESS =		Yes

WRKDIST = 		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
