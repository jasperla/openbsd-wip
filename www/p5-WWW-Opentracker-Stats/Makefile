# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT=		authentication and authorization via cookies

MODULES=		cpan
DISTNAME=		WWW-Opentracker-Stats-1.11
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	math/p5-Bit-Vector \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		converters/p5-Convert-Bencode \
		www/p5-libwww

.include <bsd.port.mk>
