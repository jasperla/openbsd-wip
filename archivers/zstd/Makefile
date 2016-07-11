# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		Cyan4973
GH_PROJECT =		zstd
GH_TAGNAME =		v0.7.3

CATEGORIES =		archivers

HOMEPAGE =		http://www.zstd.net/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MODULES =		gcc4
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

MAKE_ENV =		CC="${CC}" CFLAGS="${CFLAGS}"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKSRC =		"${WRKDIST}/programs"

ALL_TARGET =		zstd

.include <bsd.port.mk>
