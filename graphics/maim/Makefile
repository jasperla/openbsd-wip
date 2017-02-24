# $OpenBSD: Makefile,v 1.12 2015/08/25 13:18:27 sthen Exp $

V =		4.4.47
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE SM X11 Xext Xfixes Xrandr c jpeg m png pthread
WANTLIB += z

MODULES =	devel/cmake \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

LIB_DEPENDS +=		graphics/jpeg \
			graphics/png

RUN_DEPENDS =	graphics/slop

CONFIGURE_ARGS =	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN=False

NO_TEST =	Yes

.include <bsd.port.mk>
