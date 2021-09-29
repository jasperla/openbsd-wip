# $OpenBSD: Makefile,v 1.23 2021/07/18 09:18:07 paco Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.5.0

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

LUV_VER =	1.30.1-1
LUAJIT_VER =	787736990ac3b7d5ceaba2697c7d0f58f77bb782

MASTER_SITES0 =	https://github.com/luvit/luv/releases/download/${LUV_VER}/
MASTER_SITES1 = https://github.com/LuaJIT/LuaJIT/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		luv-${LUV_VER}${EXTRACT_SUFX}:0 \
		luajit-{}${LUAJIT_VER}${EXTRACT_SUFX}:1

# Neovim: Apache 2.0 + Vim License
# LuaJIT: MIT + public domain
# libluv: Apache 2.0
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c iconv intl m msgpackc pthread termkey
WANTLIB += tree-sitter unibilium util uv vterm

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua \
			textproc/intltool

# LuaJIT is binary compatible with Lua-5.1 extension modules, so we can use
# them directly, even on architectures where we will be embedding LuaJIT.
# https://luajit.org/extensions.html
MODLUA_VERSION =	5.1

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/lua-bitop # XXX needed?

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libtermkey \
			devel/libuv \
			devel/libvterm \
			devel/msgpack \
			devel/unibilium \
			textproc/tree-sitter

RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main \
			devel/desktop-file-utils \
			devel/lua-compat53

CONFIGURE_ARGS +=	-DUSE_BUNDLED=OFF \
			-DLUA_PRG=${STATIC_DEPS_INST}/bin/luajit-2.1.0-beta3 \
			-DLUAJIT_INCLUDE_DIR=${STATIC_DEPS_INST}/include/luajit-2.1 \
			-DLUAJIT_LIBRARY=${STATIC_DEPS_INST}/lib/libluajit-5.1.a \
			-DLIBLUV_INCLUDE_DIR=${STATIC_DEPS_INST}/include \
			-DLIBLUV_LIBRARY=${STATIC_DEPS_INST}/lib/libluv.a

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
MODULES +=	lang/python
MODPY_RUNDEP =	No
MODPY_BUILDDEP =No
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim${MODPY_FLAVOR}

# Move static deps source code under WRKDIST so that they can be patched.
STATIC_DEPS_WRKSRC=${WRKDIST}/static-deps/
post-extract:
	mkdir ${STATIC_DEPS_WRKSRC}
	mv ${WRKDIR}/LuaJIT-${LUAJIT_VER} ${STATIC_DEPS_WRKSRC}/luajit
	mv ${WRKDIR}/luv-${LUV_VER} ${STATIC_DEPS_WRKSRC}/luv

# Build LuaJIT and libluv as static libraries. We opted not to create a libluv
# port because it must be built for a specific Lua version and we don't know
# what version future ports might need. Currently no other port requires
# libluv, so it's simpler to build a static library here.
#
# Most of the libluv target is lifted from ${MODCMAKE_configure} in
# cmake.port.mk. Unfortunately we can't use it directly, as some of the
# arguments make assumptions that can't work for us here.
#
# Also Neovim plugins expect a very specific version of LuaJIT, so it only
# really makes sense to embed it.
STATIC_DEPS_WRKBUILD=${WRKBUILD}/static-deps-build
STATIC_DEPS_INST=${WRKBUILD}/static-deps-inst
pre-configure:
	mkdir -p ${STATIC_DEPS_WRKBUILD} ${STATIC_DEPS_PREFIX}

	# Build LuaJIT.
	# We can't build LuaJIT out of its src dir, so copy it so that we can
	# support SEPARATE_BUILD.
	cp -r ${STATIC_DEPS_WRKSRC}/luajit ${STATIC_DEPS_WRKBUILD}/luajit
	cd ${STATIC_DEPS_WRKBUILD}/luajit/src && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		PREFIX=${STATIC_DEPS_INST} CC=${CC} CCOPT="${CFLAGS}" \
		CCOPT_x86="" Q="" LDFLAGS="-lstdc++" BUILDMODE=static
	cd ${STATIC_DEPS_WRKBUILD}/luajit && \
		${SETENV} ${MAKE_ENV} Q="" ${MAKE_PROGRAM} install \
		PREFIX=${STATIC_DEPS_INST}

	# Build luv.
	mkdir -p ${STATIC_DEPS_WRKBUILD}/luv
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		TARGET_ALDFLAGS="-lexecinfo" \
		${CONFIGURE_ENV} \
		${LOCALBASE}/bin/cmake \
		-DBUILD_MODULE=OFF \
		-DCMAKE_COLOR_MAKEFILE=OFF \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
		-DCMAKE_SUPPRESS_REGENERATION=ON \
		-DCMAKE_INSTALL_PREFIX=${STATIC_DEPS_INST} \
		-DLUA_BUILD_TYPE=System \
		-DLUAJIT_INCLUDE_DIR=${STATIC_DEPS_INST}/include/luajit-2.1 \
		-DLUAJIT_LIBRARIES=${STATIC_DEPS_INST}/luajit/lib \
		-DWITH_LUA_ENGINE=LuaJIT \
		${STATIC_DEPS_WRKSRC}/luv
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM}
	cd ${STATIC_DEPS_WRKBUILD}/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM} install

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
#
# If cscope is installed, one test fails:
# https://github.com/neovim/neovim/issues/12744
#
# XXX: This is broken.
do-test:
	cd ${WRKSRC}/src/nvim/testdir && ${SETENV} LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
