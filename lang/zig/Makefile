# $OpenBSD$

COMMENT =	robust, optimal, clear programming language
DISTNAME =	zig-${GH_TAGNAME}
CATEGORIES =	lang

GH_ACCOUNT =	zig-lang
GH_PROJECT =	zig
GH_TAGNAME =	0.1.1

HOMEPAGE =	http://ziglang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m z

# Need llvm and clang libraries, so need ports-clang?
COMPILER =	ports-clang

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
