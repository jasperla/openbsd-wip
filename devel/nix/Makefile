# $OpenBSD$

COMMENT =	reproducible package manager for Unix
DISTNAME =	nix-2.3.15
GH_ACCOUNT =	klemensn
GH_PROJECT =	nix
GH_TAGNAME =	efe27327499e39feebcc3aef177ae84de848c09f
#EXTRACT_SUFX =	.tar.xz
CATEGORIES =	devel

# These four must always have the same major and minor!
SO_VERSION =	0.0	# 2.3.15
SHARED_LIBS +=	nixexpr		${SO_VERSION}
SHARED_LIBS +=	nixmain		${SO_VERSION}
SHARED_LIBS +=	nixstore	${SO_VERSION}
SHARED_LIBS +=	nixutil		${SO_VERSION}

HOMEPAGE =	https://nixos.org/nix/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

# TODO
#WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system boost_thread-mt
#WANTLIB += brotlidec brotlienc bz2 c crypto curl lzma m readline
#WANTLIB += sodium sqlite3

#MASTER_SITES =	https://nixos.org/releases/nix/${DISTNAME}/

# C++17
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	${RUN_DEPENDS}

LIB_DEPENDS =	archivers/brotli \
		archivers/bzip2 \
		archivers/xz \
		databases/sqlite3 \
		devel/boost \
		devel/boost,-md \
		net/curl \
		security/libsodium

RUN_DEPENDS =	archivers/gtar \
		shells/bash

TEST_DEPENDS =	${PKGPATH} \
		misc/findutils \
		textproc/gdiff

# Bash specific code using `declare' for associative arrays:
# ./configure[7906]: syntax error: `(' unexpected
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ./configure
#CONFIGURE_STYLE =	gnu
CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./bootstrap.sh
AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.71
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			EDITLINE_CFLAGS="-I/usr/include/readline -DREADLINE" \
			EDITLINE_LIBS="-lreadline"

USE_GMAKE =	Yes
MAKE_FLAGS =	SO_VERSION=${SO_VERSION} \
		V=1

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/nix"

TEST_TARGET =	installcheck

# TMPDIR is picked up to construct TEST_ROOT in ${WRKSRC}/tests/common.sh.in
# with this harcoded subdirectory
TMPDIR =	${WRKDIR}
TEST_ROOT =	${TMPDIR}/nix-test

TEST_ENV =	TMPDIR=${TMPDIR}

pre-test:
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
