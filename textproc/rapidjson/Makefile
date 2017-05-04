# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	fast JSON parser/generator for C++

V =		1.1.0
DISTNAME =	rapidjson-$V

GH_ACCOUNT =	miloyip
GH_PROJECT =	rapidjson
GH_TAGNAME =	v$V

CATEGORIES =	textproc

HOMEPAGE =	http://rapidjson.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			gcc4
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

.include <bsd.port.mk>
