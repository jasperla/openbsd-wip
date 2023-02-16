COMMENT =		reproducible package manager for Unix
DISTNAME =		nix-2.3.13
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		devel sysutils

.for _lib in expr main store util
SHARED_LIBS +=		nix${_lib}	0.0	# 2.3.13
.endfor

HOMEPAGE =		https://nixos.org/nix/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

# TODO
#WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system boost_thread-mt
#WANTLIB += brotlidec brotlienc bz2 c crypto curl lzma m readline
#WANTLIB += sodium sqlite3

MASTER_SITES =		https://nixos.org/releases/nix/${DISTNAME}/

# C++17
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		archivers/gtar \
			shells/bash

LIB_DEPENDS =		archivers/brotli \
			archivers/bzip2 \
			archivers/xz \
			databases/sqlite3 \
			devel/boost \
			devel/boost,-md \
			net/curl \
			security/libsodium

RUN_DEPENDS =		archivers/gtar \
			shells/bash

TEST_DEPENDS =		${PKGPATH} \
			misc/findutils \
			textproc/gdiff

# Bash specific code using `declare' for associative arrays:
# ./configure[7906]: syntax error: `(' unexpected
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ./configure
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			EDITLINE_CFLAGS="-I/usr/include/readline -DREADLINE" \
			EDITLINE_LIBS="-lreadline"

USE_GMAKE =		Yes
MAKE_FLAGS =		LIBnixexpr_VERSION="${LIBnixexpr_VERSION}" V=1

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/nix"

TEST_TARGET =		installcheck

# TMPDIR is picked up to construct TEST_ROOT in ${WRKSRC}/tests/common.sh.in
# with this harcoded subdirectory
TESTTMP =		${WRKDIR}
TEST_ROOT =		${TESTTMP}/nix-test
TEST_ENV =		TMPDIR=${TESTTMP}

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
