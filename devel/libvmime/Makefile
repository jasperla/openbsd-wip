# $OpenBSD: Makefile,v 1.30 2017/05/04 18:01:19 espie Exp $

COMMENT=	C++ class library for working with Internet mail

GH_ACCOUNT=     kisli
GH_PROJECT=     vmime
GH_COMMIT=      3d3ed7b26003bce0b2ce7aa355e46da4894fce39

DISTNAME=	vmime
PKGNAME=	vmime-0.9.4

SHARED_LIBS+=	vmime	4.0	# 0.0

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icuuc m pthread ${COMPILER_LIBCXX}

MODULES=	devel/cmake

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	textproc/icu4c

CONFIGURE_ARGS+=-DVMIME_HAVE_SASL_SUPPORT=OFF \
		-DVMIME_HAVE_TLS_SUPPORT=OFF

.include <bsd.port.mk>
