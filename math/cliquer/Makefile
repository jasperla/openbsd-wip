# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT =	routines for finding cliques in an arbitrary weighted graph

V =		1.22
DISTNAME =	cliquer-${V}
GH_ACCOUNT =	dimpase
GH_PROJECT =	autocliquer
GH_TAGNAME =	v${V}

SHARED_LIBS =	cliquer			0.0 # 1.21

CATEGORIES =	math

HOMEPAGE =	https://users.aalto.fi/~pat/cliquer.html

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
