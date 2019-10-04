# $OpenBSD$

V =		b669960
COMMENT =	Half-Life: Opposing Force game libraries mod
DISTNAME =	hlsdk-xash3d-opfor-${V}
PKGNAME =	xash3d-opfor-0.0.${V}

CATEGORIES =	games

HOMEPAGE =	https://xash.su

MAINTAINER =	ryan@slipgate.org

# Half Life 1 SDK LICENSE
# "You may, free of charge, download and use the SDK to develop a modified Valve
# game running on the Half-Life 1 engine.  You may distribute your modified
# Valve game in source and object code form, but only for free."
# Can not distribute this for use with xash3d engine.
PERMIT_PACKAGE =	No

MASTER_SITES =	https://charlenew.xyz/distfiles/

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake
RUN_DEPENDS =		games/xash3d/engine

CONFIGURE_ARGS =	-DGAMEDIR=${PREFIX}/lib/xash3d \
			-DSERVER_INSTALL_DIR=gearbox \
			-DCLIENT_INSTALL_DIR=gearbox \

.include <bsd.port.arch.mk>
.if ${ARCH:M${LP64_ARCHS}}
CONFIGURE_ARGS +=	-D64BIT=yes
.endif

NO_TEST =		Yes

post-install:
	${SUBST_CMD} -m 0755 -c ${FILESDIR}/opposingforce.sh \
		${PREFIX}/bin/opposingforce

.include <bsd.port.mk>
