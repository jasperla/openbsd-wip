# $OpenBSD: Makefile,v 1.12 2017/12/08 12:31:48 espie Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-Keepalive-0.272
EPOCH=		0
CATEGORIES=	net
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-IP-Minimal \
		net/p5-POE-Component-Resolver

.include <bsd.port.mk>
