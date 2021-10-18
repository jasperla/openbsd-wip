# $OpenBSD$

COMMENT =	reproducible package manager for Unix
# ${WRKSRC}/.version
PKGNAME =	nix-2.5.0pre1
GH_ACCOUNT =	klemensn
GH_PROJECT =	nix
GH_TAGNAME =	49a4fb2cfd962b3046e6c9ca4db4dd94c6f52f3c
CATEGORIES =	devel

# These four must always have the same major and minor!
SO_VERSION =	0.0	# 2.5
SHARED_LIBS +=	nixexpr		${SO_VERSION}
SHARED_LIBS +=	nixmain		${SO_VERSION}
SHARED_LIBS +=	nixstore	${SO_VERSION}
SHARED_LIBS +=	nixutil		${SO_VERSION}

HOMEPAGE =	https://nixos.org/nix/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

# TODO
#WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system boost_thread-mt
#WANTLIB += brotlidec brotlienc c crypto curl m readline
#WANTLIB += sodium sqlite3

#MASTER_SITES =	https://nixos.org/releases/nix/${DISTNAME}/
#EXTRACT_SUFX =	.tar.xz

# C++17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

BUILD_DEPENDS =	devel/bison>=2.6 \
		devel/gtest \
		shells/bash \
		textproc/jq

LIB_DEPENDS =	archivers/brotli \
		archivers/libarchive \
		archivers/xz \
		databases/sqlite3>=3.6.19 \
		devel/boehm-gc,-main \
		devel/boost>=1.66.0 \
		devel/boost,-md>=1.66.0 \
		net/curl \
		security/libsodium \
		textproc/lowdown>=0.8.0

.include <bsd.port.arch.mk>
.if ${ARCH:Mamd64}
LIB_DEPENDS +=	sysutils/libcpuid
.endif

RUN_DEPENDS =	archivers/gtar \
		shells/bash \

TEST_DEPENDS =	${PKGPATH} \
		misc/findutils \
		textproc/gdiff

# none of the Makefile/*.mk files exist in WRKBUILD
SEPARATE_BUILD =	No
# Bash specific code using `declare' for associative arrays
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ${WRKSRC}/configure
CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./bootstrap.sh
AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.71
CONFIGURE_ARGS =	--enable-gc
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# LIB_DEPENDS +=	textproc/libeditline
# use editline(3) from base instead
CONFIGURE_ENV +=	EDITLINE_CFLAGS="-I/usr/include/readline -DREADLINE" \
			EDITLINE_LIBS="-lreadline"

# shouldn't gtest provide pkg-config files?
CONFIGURE_ENV +=	GTEST_CFLAGS="-I${LOCALBASE}/include/gtest" \
			GTEST_LIBS="-lgtest"

# XXX for now
CONFIGURE_ARGS +=	--disable-doc-gen

# configure.ac:108: error: possibly undefined macro: AC_MSG_ERROR
BUILD_DEPENDS +=	devel/autoconf-archive

USE_GMAKE =	Yes
MAKE_FLAGS =	SO_VERSION=${SO_VERSION} \
		V=1

# DEBUG's value is eventually ignored;  use it as switch
.ifdef DEBUG
MAKE_FLAGS +=	OPTIMIZE=0
.else
MAKE_FLAGS +=	BUILD_DEBUG=0
.endif

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/nix

TMPDIR =	${WRKDIR}
# constructed in ${WRKSRC}/tests/common.sh.in with this harcoded subdirectory
TEST_ROOT =	${TMPDIR}/nix-test

TEST_TARGET =	installcheck
TEST_ENV =	TMPDIR=${TMPDIR}

post-extract:
	# XXX
	# configure.ac:1: warning: AC_INIT: not a literal: "m4_esyscmd(bash -c "echo -n $(cat ./.version)$VERSION_SUFFIX")"
	sed -i s/AC_INIT.*/'AC_INIT([nix],[2.5.0])'/ ${WRKSRC}/configure.ac
	# XXX "fix" hardcoded optimizations
	grep -rFl -- -O3 ${WRKSRC} | xargs sed -i s/-O3/-O2/

pre-test:
	# not created by tests
	mkdir -p ${TEST_ROOT}
	# running post-build-hook '/usr/ports/pobj/nix-2.3.4/nix-2.3.4/tests/push-to-store.sh'...
	# ...
	# post-build-hook: xargs: unknown option -- d
	ln -sf ${LOCALBASE}/bin/gxargs ${WRKDIR}/bin/xargs
	# running test tests/function-trace.sh... [FAIL]
	# ...
	#         Tracing expression 'builtins.tryEval (throw "example")'diff: unknown option -- B
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
