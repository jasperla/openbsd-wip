COMMENT =	log file navigator

V =		0.11.2
DISTNAME =	lnav-${V}
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	sysutils

HOMEPAGE =	https://lnav.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} archive bz2 c curl curses ereadline
WANTLIB += m pcre2-8 readline sqlite3 util z

BUILD_DEPENDS =	devel/re2c

LIB_DEPENDS =	archivers/libarchive \
		databases/sqlite3 \
		net/curl \
		devel/pcre2 \
		devel/readline \
		archivers/bzip2

SITES =		https://github.com/tstack/lnav/releases/download/v${V}/

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE = gnu

CONFIGURE_ENV = CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lereadline" \
		ac_cv_header_execinfo_h=no \
		ac_cv_search_backtrace=

USE_GMAKE =	Yes

.include <bsd.port.mk>
