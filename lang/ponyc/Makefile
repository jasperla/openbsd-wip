# $OpenBSD$

# *NOT* ${CLANG_ARCHS}, since this language only supports ARM and x86.
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =	actor-model, capabilities-secure, high performance language
DISTNAME =	ponyc-${GH_TAGNAME}
CATEGORIES =	lang

GH_ACCOUNT =	ponylang
GH_PROJECT =	ponyc
GH_TAGNAME =	0.20.0

HOMEPAGE =	https://www.ponylang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += c m

LIB_DEPENDS =	devel/pcre2

USE_GMAKE =	Yes
MAKE_FLAGS =	verbose=1

.include <bsd.port.mk>
