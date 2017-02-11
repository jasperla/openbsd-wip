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

WANTLIB += c kvm m msgpackc pthread termkey unibilium util uv vterm

MODULES =		devel/cmake \
			textproc/intltool \
			devel/gettext \
			lang/lua
# XXX need lua-bit, check if it's a RUN_DEPEND
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/libtermkey \
			devel/unibilium \
			devel/msgpack \
			devel/libuv \
			devel/libmpack/main \
			devel/libvterm
RUN_DEPENDS +=		devel/libmpack/lua \
			devel/lpeg

MAKE_FLAGS +=		USE_BUNDLED_DEPS=OFF
CONFIGURE_ARGS +=	-DLUA_PRG=${MODLUA_BIN}

# Tests need gmake
USE_GMAKE = Yes

# XXX this builds neovim a second time, and then fails
# ninja: error: unknown target 'functionaltest'
do-test:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE} test ${MAKE_FLAGS}

.include <bsd.port.mk>
