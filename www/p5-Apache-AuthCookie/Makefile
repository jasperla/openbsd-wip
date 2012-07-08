# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT=		authentication and authorization via cookies

MODULES=		cpan
DISTNAME=		Apache-AuthCookie-3.15

CATEGORIES=		www
MASTER_SITES=		ftp://202.232.140.138/pub/FreeBSD/ports/distfiles/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/mod_perl>=1.27
#			www/ap2-mod_perl >= 1.999022

BUILD_DEPENDS=		${RUN_DEPENDS}

# make regress must be done as non-root user
REGRESS_DEPENDS=	www/p5-Apache-Test

.include <bsd.port.mk>
