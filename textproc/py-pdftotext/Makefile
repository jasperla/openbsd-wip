# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	simple pdf text extraction

MODPY_EGG_VERSION=	2.1.5
DISTNAME=	pdftotext-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m poppler-cpp

COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		print/poppler

.include <bsd.port.mk>
