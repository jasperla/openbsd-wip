# $OpenBSD: Makefile,v 1.13 2011/09/16 10:31:23 espie Exp $


COMMENT=	chemistry file translation program
V=		2.3.2
DISTNAME=	openbabel-${V}
CATEGORIES=	misc
REVISION=	0

SUBST_VARS=	V

SHARED_LIBS=	openbabel	6.0	# .3.0
SHARED_LIBS+=	inchi		0.0	# .0.4

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

.include <bsd.port.arch.mk>

WANTLIB += c m pthread stdc++ xml2 z cairo wx_base wx_gtk2_adv wx_gtk2_core

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DEPENDS=	math/eigen2

LIB_DEPENDS=	textproc/libxml \
		graphics/cairo \
		x11/wxWidgets
TEST_FLAGS=	BABEL_LIBDIR=${WRKBUILD}/lib

# Boost is used for shared pointers only, missing in GCC 3.x
.if ${COMPILER_VERSION} == "gcc3"
BUILD_DEPENDS+=	devel/boost
.endif

.include <bsd.port.mk>
