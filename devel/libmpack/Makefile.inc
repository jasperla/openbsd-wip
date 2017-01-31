# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

V ?=		1.0.3
DISTNAME ?=	libmpack-${V}

GH_ACCOUNT ?=	tarruda
GH_PROJECT ?=	libmpack
GH_TAGNAME ?=	${V}

CATEGORIES ?=	devel
HOMEPAGE ?=	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

USE_GMAKE ?=		Yes

MAKE_FLAGS ?=	config=release
