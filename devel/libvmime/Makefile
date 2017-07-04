# $OpenBSD: Makefile,v 1.30 2017/05/04 18:01:19 espie Exp $

COMMENT=	C++ class library for working with Internet mail

GH_ACCOUNT=     kisli
GH_PROJECT=     vmime
GH_COMMIT=      3d3ed7b26003bce0b2ce7aa355e46da4894fce39

DISTNAME=	vmime
PKGNAME=	vmime-0.9.4	# made-up version

SHARED_LIBS+=	vmime	4.0	# 0.0

CATEGORIES=	devel mail

HOMEPAGE=	http://www.vmime.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gmp gnutls hogweed idn2 m nettle p11-kit pthread ${LIBCXX}
WANTLIB += tasn1 z

MODULES=	devel/gettext \
		devel/cmake \
		gcc4

BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	security/gnutls \
		security/libgsasl

MODGCC4_LANGS=	c c++
MODGCC4_ARCHS=	*

.include <bsd.port.mk>
