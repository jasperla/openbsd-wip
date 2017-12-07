# $OpenBSD$

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =    					Gothic I/II engine opensource implementation
COMMENT-main =					Main package
COMMENT-libs =  				Regoth dependencies

V =               		0.4
VERSION =               nightly-0.4.68
DISTNAME =              nightly-0.4.68

EXTRACT_SUFX =   		.zip

PKGNAME-main =	  					REGoth-${VERSION}
PKGNAME-libs =						REGoth-libs-${V}

GH_ACCOUNT =	REGoth-project
GH_PROJECT =	REGoth
GH_TAGNAME =	${VERSION}


CATEGORIES =	games

HOMEPAGE =		https://www.github.com/REGoth-project/REGoth

MASTER_SITES =   https://www.github.com/REGoth-project/REGoth/archive/
MASTER_SITES0 =  https://www.github.com/devnexen/regoth-libs/archive/

DISTFILES = ${DISTNAME}${EXTRACT_SUFX} \
		REGoth-libs-${V}${EXTRACT_SUFX}{${V}${EXTRACT_SUFX}}:0


PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL X11 Xcursor Xinerama Xrandr
WANTLIB +=		BulletCollision BulletDynamics BulletSoftBody
WANTLIB += 		LinearMath c m openal

MODULES =		devel/cmake
COMPILER =      base-clang ports-gcc

FLAVORS ?=

MUTLI_PACKAGES = -main -libs

.include <bsd.port.arch.mk>

RUN_DEPENDS-main =								c c++ z 
RUN_DEPENDS-libs =								games/regoth,main=${V} 
LIB_DEPENDS =		audio/openal \
					devel/bullet

CXXFLAGS =		-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/bullet \
				-I${X11BASE}/include
LDFLAGS =		-L${LOCALBASE}/lib \
				-L${X11BASE}/lib
CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
					-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
					-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
					-DBUILD_SHARED_LIBS=OFF

post-extract:
	cd ${WRKSRC} && \
		rm -rf lib/* && \
		mv ../regoth-libs-${V}/* lib/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/REGoth ${PREFIX}/bin

.include <bsd.port.mk>
