# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	routines for finding cliques in an arbitrary weighted graph

V=		1.22
DISTNAME=	cliquer-${V}

SHARED_LIBS=	cliquer			0.0 # 1.21

CATEGORIES=	math

HOMEPAGE=	https://users.aalto.fi/~pat/cliquer.html

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/dimpase/autocliquer/releases/download/v${V}/

WANTLIB += c

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
