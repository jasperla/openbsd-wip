# $OpenBSD$

COMMENT=		library of routines for performing sparse factorization

VERSION =		5.2.1
NAME =			superlu
DISTNAME =		${NAME}-${VERSION}

SHARED_LIBS +=		superlu                   0.0 # 5.2

CATEGORIES =		math

HOMEPAGE =		http://crd-legacy.lbl.gov/~xiaoye/SuperLU/

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# BSD 3 Clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/xiaoyeli/${NAME}/archive/
DISTFILES =	v${VERSION}.tar.gz

MODULES =	devel/cmake

USE_NINJA = No

WANTLIB += blas m

BUILD_DEPENDS +=	lang/gcc/4.9,-f95

LIB_DEPENDS +=		math/blas

CONFIGURE_ARGS +=	-DUSE_XSDK_DEFAULTS:BOOL=ON

.include <bsd.port.mk>
