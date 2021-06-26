# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	Algorithms for linear algebra over F_2

DISTNAME=	m4ri-20200125

SHARED_LIBS=	m4ri	0.0 # 0.0.20200125

CATEGORIES=	math

HOMEPAGE=	https://bitbucket.org/malb/m4ri/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += m png z

MASTER_SITES=	${HOMEPAGE:=downloads/}

LIB_DEPENDS=	graphics/png

CONFIGURE_STYLE=gnu

CFLAGS=		-I${LOCALBASE}/include

.include <bsd.port.mk>
