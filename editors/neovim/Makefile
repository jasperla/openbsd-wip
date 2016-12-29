# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $
#
COMMENT =	a continuation and extension of Vim

V =		0.1.7
DISTNAME =	neovim-${V}

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v${V}

#SHARED_LIBS =	???

CATEGORIES =	editors devel

HOMEPAGE =	http://neovim.org

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

# For now, build with luajit. Must keep in sync with the version of lua
# that lang/luajit is currently targetting.
# XXX Use flavors for plain lua and luajit?
LUAJIT_V =		51
SUBST_VARS +=		LUAJIT_V

MODULES =		devel/cmake
LIB_DEPENDS =		lang/luajit \
			devel/libtermkey \
			devel/unibilium \
			devel/msgpack \
			devel/libuv

#NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
