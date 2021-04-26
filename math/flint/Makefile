# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	C library for doing number theory

DISTNAME=	flint-2.7.1

SHARED_LIBS=	flint	0.0 # 15.0.1

CATEGORIES=	math

HOMEPAGE=	http://www.flintlib.org/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} cblas gmp m mpfr ntl

COMPILER =	base-clang ports-gcc

MASTER_SITES=	${HOMEPAGE}

MODULES=	devel/cmake

LIB_DEPENDS=	devel/mpfr \
		math/ntl \
		math/cblas

CONFIGURE_ARGS=	-DWITH_NTL=ON

NO_TEST=	Yes

.include <bsd.port.mk>
