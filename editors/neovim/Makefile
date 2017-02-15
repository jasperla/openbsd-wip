# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $
#
COMMENT =	a continuation and extension of Vim

V =		0.1.7
DISTNAME =	neovim-${V}

GH_ACCOUNT =	neovim
GH_PROJECT =	neovim
GH_TAGNAME =	v${V}

CATEGORIES =	editors devel

HOMEPAGE =	http://neovim.org

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0 + Vim License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m msgpackc pthread termkey unibilium util uv vterm

MODULES =		devel/cmake \
			devel/gettext \
			lang/lua \
			textproc/intltool
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gperf \
			devel/lpeg \
			devel/lua-bitop

LIB_DEPENDS =		devel/libtermkey \
			devel/libuv \
			devel/libvterm \
			devel/msgpack \
			devel/unibilium
RUN_DEPENDS +=		devel/libmpack/lua \
			devel/libmpack/main

MAKE_FLAGS +=		USE_BUNDLED_DEPS=OFF
CONFIGURE_ARGS +=	-DLUA_PRG=${MODLUA_BIN}

# Tests need gmake
USE_GMAKE = Yes

VIMPROG =	${WRKBUILD}/bin/nvim
SUBST_VARS +=	VIMPROG
pre-test:
	${SUBST_CMD} ${WRKSRC}/src/nvim/testdir/test49.vim

# These are the "old tests". To run the newer ones, we need "busted", which is
# not yet ported. The ninja targets for the new tests are functionaltest,
# functionaltest-lua and unittest. Don't add -j to this make invocation.
#
# XXX tests fails because the terminal is in (what looks like) 80x25. If run
# outside of the ports tree, all is well.
do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} -C src/nvim/testdir \
		VIMPROG=${VIMPROG} ${MAKE_FLAGS}

.include <bsd.port.mk>
