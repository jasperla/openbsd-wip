# $OpenBSD$

COMMENT =	Half-Life game libraries mod
DISTNAME =	xash3d-hl-0.0.70bd3a2

GH_ACCOUNT =	FWGS
GH_PROJECT =	hlsdk-xash3d
GH_COMMIT =	70bd3a2497920200843882c416eefd1876b0c12e

CATEGORIES =	games

HOMEPAGE =	https://xash.su

MAINTAINER =	ryan@slipgate.org

# Half Life 1 SDK LICENSE
# "You may, free of charge, download and use the SDK to develop a modified Valve
# game running on the Half-Life 1 engine.  You may distribute your modified
# Valve game in source and object code form, but only for free."
# Can not distribute this for use with xash3d engine.
PERMIT_PACKAGE =	No

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
