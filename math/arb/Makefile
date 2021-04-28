# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	C library for floating-point ball arithmetic

GH_ACCOUNT=	fredrik-johansson
GH_PROJECT=	arb
GH_TAGNAME=	2.19.0

SHARED_LIBS =	arb	0.0 # 2.10.0

CATEGORIES=	math

HOMEPAGE=	https://arblib.org/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += flint gmp m mpfr pthread

MODULES=	devel/cmake

LIB_DEPENDS=	math/flint

NO_TEST=	Yes

.include <bsd.port.mk>
