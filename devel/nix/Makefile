# $OpenBSD$

COMMENT =	reproducable package manager for Unix
DISTNAME =	nix-2.3.4
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	devel

# These four must always have the same major and minor!
SHARED_LIBS +=	nixexpr                   0.0 # 2.3.4
SHARED_LIBS +=	nixmain                   0.0 # 2.3.4
SHARED_LIBS +=	nixstore                  0.0 # 2.3.4
SHARED_LIBS +=	nixutil                   0.0 # 2.3.4

HOMEPAGE =	https://nixos.org/nix/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system boost_thread-mt
WANTLIB += brotlidec brotlienc bz2 c crypto curl lzma m readline
WANTLIB += sodium sqlite3

MASTER_SITES =	https://nixos.org/releases/nix/${DISTNAME}/

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

RUN_DEPENDS =	shells/bash

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			EDITLINE_CFLAGS="-I/usr/include/readline -DREADLINE" \
			EDITLINE_LIBS="-lreadline"

USE_GMAKE =	Yes
MAKE_FLAGS =	LIBnixexpr_VERSION="${LIBnixexpr_VERSION}" V=1

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/nix"

.include <bsd.port.mk>
