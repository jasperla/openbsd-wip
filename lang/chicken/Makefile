# $OpenBSD: Makefile,v 1.17 2011/03/09 06:23:35 ajacoutot Exp $

COMMENT=	practical and portable Scheme system

V=		4.7.0
DISTNAME=	chicken-$V

CATEGORIES=	lang

HOMEPAGE=	http://www.call-cc.org/
MASTER_SITES=	http://code.call-cc.org/releases/$V/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

LIB_DEPENDS+=		devel/libffi
WANTLIB=		c m pthread ffi

MAKE_ENV+=		PLATFORM=bsd

CONFIGURE_STYLE=	none

do-build:
	cd ${WRKSRC} && gmake PLATFORM=bsd

do-install:
	cd ${WRKSRC} && gmake PLATFORM=bsd install

.include <bsd.port.mk>
