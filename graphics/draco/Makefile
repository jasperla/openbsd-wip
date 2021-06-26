# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	library for compression of 3D geometric meshes

GH_ACCOUNT=	google
GH_PROJECT=	draco
GH_TAGNAME=	1.4.1

SHARED_LIBS=	draco		0.0 # 1

CATEGORIES=	graphics

HOMEPAGE=	https://google.github.io/draco/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
