COMMENT =	FUSE single-file backing store via Amazon S3

V =		2.1.3
GH_ACCOUNT =	archiecobbs
GH_PROJECT =	s3backer
GH_TAGNAME =	${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/archiecobbs/s3backer

MAINTAINER =	Todd T. Fries <todd@fries.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto curl expat fuse nghttp2 nghttp3 ngtcp2
WANTLIB +=	ngtcp2_crypto_libressl pthread ssl z zstd

LIB_DEPENDS =	net/curl \
		archivers/zstd

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# nbdkit is Linux-oriented; keep FUSE-only for OpenBSD
CONFIGURE_ARGS =	--disable-nbd

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
