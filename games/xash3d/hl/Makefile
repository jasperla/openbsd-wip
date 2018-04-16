# $OpenBSD$

COMMENT =	Half-Life client and server libraries for Xash3D
DISTNAME =	xash3d-hl-0.19.1

GH_ACCOUNT =	FWGS
GH_PROJECT =	hlsdk-xash3d
GH_COMMIT =	2aab84f6432b78246d146348a5a4a29a6ad5decc

CATEGORIES =	games

HOMEPAGE =	http://xash.su

MAINTAINER =	ryan@slipgate.org

# Mixed license, GPL v3+, Valve source license, and Id software
# licenses.  Includes copying.txt GPL file but some source headers
# still have ``Valve LLC'' and ``Id Software'' mentioned.
#
# Example from engine/cdll_int.h:
# "Use, distribution, and modification of this source code and/or resulting
# object code is restricted to non-commercial enhancements to products from
# Valve LLC.  All other use, distribution, or modification is prohibited
# without written permission from Valve LLC."
#
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DGAMEDIR=${PREFIX}/lib/xash3d \
			-DSERVER_INSTALL_DIR=valve \
			-DCLIENT_INSTALL_DIR=valve \

.include <bsd.port.arch.mk>
.if ${ARCH:M${LP64_ARCHS}}
CONFIGURE_ARGS +=	-D64BIT=yes
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
