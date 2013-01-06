# $OpenBSD: Makefile,v 1.13 2011/09/16 10:31:23 espie Exp $

COMMENT=	chemistry file translation program

V=		2.3.1
DISTNAME=	openbabel-${V}
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS+=	openbabel	5.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

WANTLIB=	c m stdc++ xml2 z cairo

MODULES=	devel/cmake \
		converters/libiconv

BUILD_DPEENDS=	devel/boost

LIB_DEPENDS=	textproc/libxml \
		graphics/cairo

REGRESS_DEPENDS=${BUILD_PKGPATH}

.include <bsd.port.mk>
