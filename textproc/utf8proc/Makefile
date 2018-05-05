# $OpenBSD: Makefile,v 1.8 2017/07/26 22:45:31 Exp $

COMMENT=	UTF-8 processing library

VERSION=	2.1.1
DISTNAME=	utf8proc-${VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/JuliaLang/utf8proc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/JuliaLang/utf8proc/archive/
DISTFILES=	v${VERSION}.tar.gz

USE_GMAKE=	Yes

do-test:
	cd ${WRKSRC} && gmake check 

.include <bsd.port.mk>
