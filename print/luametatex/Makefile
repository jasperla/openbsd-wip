COMMENT =	TeX engine for ConTeXt

V =		2.10.08
PKGNAME =	luametatex-${V}

GH_ACCOUNT =	contextgarden
GH_PROJECT =	luametatex
GH_TAGNAME =	v${V}

CATEGORIES =	print textproc

HOMEPAGE =	https://github.com/contextgarden/luametatex

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2 + other permissible licenses. XXX check
PERMIT_PACKAGE =	Yes

# XXX Gah, they bundle Lua.
MODULES =		devel/cmake # lang/lua
#MODLUA_BUILDDEP =	No

WANTLIB +=		c m pthread

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

.include <bsd.port.mk>
