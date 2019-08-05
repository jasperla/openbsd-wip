# $OpenBSD$

COMMENT =	Half-Life client and server libraries for Xash3D
DISTNAME =	xash3d-hl-0.0.70bd3a2

GH_ACCOUNT =	FWGS
GH_PROJECT =	hlsdk-xash3d
GH_COMMIT =	70bd3a2497920200843882c416eefd1876b0c12e

CATEGORIES =	games

HOMEPAGE =	https://xash.su

MAINTAINER =	ryan@slipgate.org

# Valve Half Life 1 SDK LICENSE
# 'You may distribute your modified Valve game in source and object
# form, but only for free.'
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake
RUN_DEPENDS =		games/xash3d/engine

CONFIGURE_ARGS =	-DGAMEDIR=${PREFIX}/lib/xash3d \
			-DSERVER_INSTALL_DIR=valve \
			-DCLIENT_INSTALL_DIR=valve \

.include <bsd.port.arch.mk>
.if ${ARCH:M${LP64_ARCHS}}
CONFIGURE_ARGS +=	-D64BIT=yes
.endif

NO_TEST =		Yes

post-install:
	${SUBST_CMD} -m 0755 -c ${FILESDIR}/halflife.sh ${PREFIX}/bin/halflife

.include <bsd.port.mk>
