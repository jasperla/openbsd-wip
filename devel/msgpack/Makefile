# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		MessagePack implementation for C and C++

V = 			2.0.0
DISTNAME =		msgpack-${V}
CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

# XXX doxygen and examples

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake
BUILD_DEPENDS +=	devel/gtest>=1.8.0

.include <bsd.port.mk>
