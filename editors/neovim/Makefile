# $OpenBSD: Makefile,v 1.23 2021/07/18 09:18:07 paco Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v0.5.0

CATEGORIES =	editors devel
HOMEPAGE =	https://neovim.io
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# XXX: Big-ass comment explaining why we are doing this evil.
# Neovim must be statically linked with libluv, which isn't yet ported.
LUV_VER =	1.30.1-1
LUV =		luv-${LUV_VER}
LUAJIT_VER =	787736990ac3b7d5ceaba2697c7d0f58f77bb782
# XXX luajit distfile has a silly name.

MASTER_SITES0 =	https://github.com/luvit/luv/releases/download/${LUV_VER}/
MASTER_SITES1 = https://github.com/LuaJIT/LuaJIT/archive/
MASTER_SITES2 = https://github.com/libmpack/libmpack-lua/releases/download/1.0.8/
MASTER_SITES3 = http://www.inf.puc-rio.br/~roberto/lpeg/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${LUV}${EXTRACT_SUFX}:0 \
		${LUAJIT_VER}${EXTRACT_SUFX}:1 \
		libmpack-lua-1.0.8${EXTRACT_SUFX}:2 \
		lpeg-1.0.2${EXTRACT_SUFX}:3

# Apache 2.0 + Vim License
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c iconv intl m msgpackc pthread termkey
WANTLIB += tree-sitter unibilium util uv vterm

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			textproc/intltool

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
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
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DUSE_BUNDLED=OFF \
			-DLUA_PRG=${WRKDIR}/deps/luajit/bin/luajit-2.1.0-beta3 \
			-DLUAJIT_INCLUDE_DIR=${WRKDIR}/deps/luajit/include/luajit-2.1 \
			-DLUAJIT_LIBRARY=${WRKDIR}/deps/luajit/lib/libluajit-5.1.a \
			-DLIBLUV_INCLUDE_DIR=${WRKBUILD}/deps/luv/include \
			-DLIBLUV_LIBRARY=${WRKBUILD}/deps/luv/lib/libluv.a

MAKE_ENV +=		LUA_PATH=${WRKBUILD}/deps/luajit/lib/lua/5.1/

# Tests need gmake
USE_GMAKE = Yes
# `test_startup_utf8.vim' requires either bash or zsh
MODULES +=	lang/python
MODPY_RUNDEP =	No
MODPY_BUILDDEP =	No
TEST_DEPENDS =	shells/bash \
		editors/py-neovim \
		editors/py-neovim${MODPY_FLAVOR}

# Move static dependency source code under WRKDIST so that we can patch them.
post-extract:
	mkdir ${WRKDIST}/static-deps
	mv ${WRKDIR}/LuaJIT-${LUAJIT_VER} ${WRKDIST}/static-deps/luajit
	mv ${WRKDIR}/luv-${LUV_VER} ${WRKDIST}/static-deps/luv
	mv ${WRKDIR}/libmpack-lua-1.0.8 ${WRKDIST}/static-deps/libmpack-lua
	mv ${WRKDIR}/lpeg-1.0.2 ${WRKDIST}/static-deps/lpeg

# FIXME: comment
# Build libluv first as a static library. We opted not to create a libluv
# port because it must be built for a specific Lua version and we don't know
# what version future ports might need. Currently no other port requires
# libluv, so it's simpler to build a static library here.
#
# Most of this target is lifted from ${MODCMAKE_configure} in cmake.port.mk.
# Unfortunately we can't use it directly, as some of the arguments make
# assumptions that can't work for us here.
DEPS_DIR=${WRKBUILD}/deps
pre-configure:
	mkdir -p ${WRKBUILD}/build
	mkdir -p ${WRKBUILD}/deps
	# We can't build LuaJIT out-of-src-dir, so copy it so that we can do
	# SEPARATE_BUILD=Yes.
	cp -r ${WRKSRC}/static-deps/luajit ${WRKBUILD}/build/luajit
	cd ${WRKBUILD}/build/luajit && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 ${MAKE_PROGRAM} PREFIX=${WRKDIR}/deps/luajit
	cd ${WRKBUILD}/build/luajit && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM} install PREFIX=${WRKDIR}/deps/luajit \
		CC=${CC} CCOPT="${CFLAGS}" \
		CCOPT_x86="" Q=""

	mkdir -p ${WRKBUILD}/build/luv
	cd ${WRKBUILD}/build/luv && \
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
		-DCMAKE_INSTALL_PREFIX=${WRKBUILD}/deps/luv \
		-DLUA_BUILD_TYPE=System \
		-DLUA_INCLUDE_DIR=${WRKDIR}/deps/luajit/include \
		-DLUA_LIBRARIES=${WRKDIR}/deps/luajit/lib \
		-DWITH_LUA_ENGINE=Lua \
		${WRKSRC}/static-deps/luv
	cd ${WRKBUILD}/build/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM}
	cd ${WRKBUILD}/build/luv && \
		${SETENV} ${MAKE_ENV} VERBOSE=1 \
		${MAKE_PROGRAM} install
	mkdir -p ${WRKDIR}/deps/luajit/lib/lua/5.1

	# XXX should this be a static obj built in to neovim?
	cp -r ${WRKSRC}/static-deps/libmpack-lua ${WRKBUILD}/build/libmpack-lua
	cd ${WRKBUILD}/build/libmpack-lua && \
		${MAKE_ENV} ${CC} ${CFLAGS} -I ${WRKDIR}/deps/luajit/include/luajit-2.1 ${LDFLAGS} -shared -o lmpack.so lmpack.c
	cp ${WRKBUILD}/build/libmpack-lua/lmpack.so ${WRKDIR}/deps/luajit/lib/lua/5.1/

	cp -r ${WRKSRC}/static-deps/lpeg ${WRKBUILD}/build/lpeg
	cd ${WRKBUILD}/build/lpeg && \
		${MAKE_ENV} ${MAKE} CC=${CC} \
		LUADIR=${WRKDIR}/deps/luajit/include/luajit-2.1 \
		COPT="${CFLAGS}" \
		MAKE=${MAKE} lpeg.so \
		DLLFLAGS="-shared"
	#DLLFLAGS="${LDFLAGS} -L${WRKDIR}/deps/luajit/lib -lluajit-5.1 -shared"
	cp ${WRKBUILD}/build/lpeg/lpeg.so ${WRKDIR}/deps/luajit/lib/lua/5.1/

# These are the "old tests". There is also a new suite, but we would need the
# "busted" test suite for Lua, which is not yet ported.
#
# If cscope is installed, one test fails:
# https://github.com/neovim/neovim/issues/12744
do-test:
	cd ${WRKSRC}/src/nvim/testdir && ${SETENV} LC_CTYPE=en_US.UTF-8 \
		${MAKE_PROGRAM} NVIM_PRG=${WRKBUILD}/bin/nvim ${MAKE_FLAGS}

.include <bsd.port.mk>
