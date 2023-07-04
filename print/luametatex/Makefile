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

# Note: statically embedded lua interpreter for $reasons:
# https://github.com/contextgarden/luametatex/issues/6#issuecomment-1619143916
MODULES =		devel/cmake

WANTLIB +=		c m pthread

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

.include <bsd.port.mk>
