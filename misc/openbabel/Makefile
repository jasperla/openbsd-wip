# $OpenBSD: Makefile,v 1.13 2011/09/16 10:31:23 espie Exp $

ONLY_FOR_ARCHS=	${GCC3_ARCHS} ${GCC4_ARCHS}

COMMENT=	chemistry file translation program
V=		2.3.1
DISTNAME=	openbabel-${V}
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS=	openbabel	6.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

.include <bsd.port.arch.mk>

WANTLIB=	c m pthread stdc++ xml2 z cairo wx_base wx_gtk2_core

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DEPENDS=	math/eigen2

LIB_DEPENDS=	textproc/libxml \
		graphics/cairo \
		x11/wxWidgets

# Boost is used for shared pointers only, missing in GCC 3.x
.if ${GCC3_ARCHS:M${ARCH}}
BUILD_DEPENDS+=	devel/boost
.endif

.include <bsd.port.mk>
