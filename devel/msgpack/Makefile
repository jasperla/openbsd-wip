# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		MessagePack implementation for C and C++

V = 			1.2.0
DISTNAME =		cpp-${V}
PKGNAME =		msgpack-${V}

SHARED_LIBS +=  msgpack	0.0 # 4.0

CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# XXX
PERMIT_PACKAGE_CDROM =	Yes

# XXX using a bugfix branch in a developer's fork
#GH_ACCOUNT =		msgpack
GH_ACCOUNT =		redboltz
GH_PROJECT =		msgpack-c
GH_COMMIT =		b8ee27c6722a8a784e6112463624e7d18451179c
#GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake

# XXX tests
#TEST_DEPENDS =		???

.include <bsd.port.mk>
