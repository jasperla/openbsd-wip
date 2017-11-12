# $OpenBSD: Makefile,v 1.3 2017/10/15 10:53:55 jasper Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.2.1

CATEGORIES =	editors devel
HOMEPAGE =	http://neovim.org
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0 + Vim License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lua5.1 m msgpackc pthread termkey unibilium util uv vterm

MODULES =		devel/cmake \
			devel/gettext \
			lang/lua \
			textproc/intltool

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/luabitop

LIB_DEPENDS =		devel/libtermkey \
			devel/libuv \
			devel/libvterm \
			devel/msgpack \
			devel/unibilium

RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main \
			devel/desktop-file-utils

MAKE_FLAGS +=		USE_BUNDLED_DEPS=OFF
CONFIGURE_ARGS +=	-DLUA_PRG=${MODLUA_BIN} \
			-DPREFER_LUA=ON # disables LuaJIT

# Tests need gmake
USE_GMAKE = Yes

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
# XXX one test failure
do-test:
	cd ${WRKSRC} && env LC_CTYPE=en_US.UTF-8 ${MAKE_PROGRAM} \
		-C src/nvim/testdir NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
