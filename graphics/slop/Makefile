# $OpenBSD: Makefile,v 1.9 2015/08/25 13:18:27 sthen Exp $

V =		5.3.21
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext c m pthread

MODULES =	devel/cmake \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

BUILD_DEPENDS +=	graphics/glm

CONFIGURE_ARGS +=	-DCMAKE_COMPRESS_MAN:BOOL=Off

NO_TEST =	Yes

.include <bsd.port.mk>
