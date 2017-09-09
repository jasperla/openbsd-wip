# $OpenBSD$

V =		1.3
COMMENT =	small and easy to use console text editor
DISTNAME =	dte-${V}
CATEGORIES =	editors

GH_ACCOUNT =	craigbarnes
GH_PROJECT =	dte
GH_TAGNAME =	v${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses iconv

# Needs C11
COMPILER =	base-clang ports-clang ports-gcc

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	V=1 prefix="${PREFIX}" mandir="${PREFIX}/man"

.include <bsd.port.mk>
