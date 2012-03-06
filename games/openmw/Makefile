# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.12.0
DISTNAME =		openmw-${V}-source
PKGNAME =		openmw-${V}

CATEGORIES =		games

HOMEPAGE =		http://openmw.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody LinearMath
WANTLIB += OIS OgreMain QtGui boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_system-mt boost_thread-mt c e2fs-uuid freetype
WANTLIB += m mpg123 openal png pthread sndfile stdc++

MASTER_SITES =		http://openmw.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4
LIB_DEPENDS =		x11/ogre \
			devel/boost \
			audio/openal \
			audio/mpg123 \
			audio/libsndfile \
			sysutils/e2fsprogs \
			devel/libtool,-ltdl \
			devel/bullet \
			graphics/png \
			devel/ois

NO_REGRESS =		Yes

CFLAGS +=		-pthread

do-install:
.	for f in esmtool omwlauncher openmw
	${INSTALL_PROGRAM} ${WRKBUILD}/${f} ${PREFIX}/bin
.	endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/openmw
	cd ${WRKBUILD} && pax -rw resources ${PREFIX}/share/openmw/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openmw
.	for c in launcher.cfg openmw.cfg
	${INSTALL_DATA} ${WRKBUILD}/${c} ${PREFIX}/share/examples/openmw/
.	endfor

.include <bsd.port.mk>
