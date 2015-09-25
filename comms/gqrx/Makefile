# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:11 ajacoutot Exp $

COMMENT=	gqrx is an experimental software defined radio

GH_ACCOUNT=	csete
GH_PROJECT=	gqrx
GH_TAGNAME=	v2.3.2

DISTNAME=	gqrx-${GH_TAGNAME:S/v//}

CATEGORIES=	comms

HOMEPAGE=	http://gqrx.dk/

MODULES =	x11/qt4

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	cd ${WRKSRC} && qmake4

do-install:
	cp -p ${WRKSRC}/gqrx ${PREFIX}/bin

.include <bsd.port.mk>
