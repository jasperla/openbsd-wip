# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	simple implementation of msgpack in C

V =		1.0.3
DISTNAME =	libmpack-${V}

SHARED_LIBS +=	mpack	0.0

GH_ACCOUNT =   tarruda
GH_PROJECT =   libmpack
GH_TAGNAME =   ${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
MAKE_FLAGS +=		config=release

post-install:
	rm -f ${PREFIX}/lib/libmpack.la

.include <bsd.port.mk>
