# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT=		authentication and authorization via cookies

MODULES=		cpan
DISTNAME=		Apache-AuthCookie-3.14
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/mod_perl>=1.27
#			www/ap2-mod_perl >= 1.999022

BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_FLAGS=		APACHE_TEST_STARTUP_TIMEOUT=10 \
			TEST_VERBOSE=1

REGRESS_DEPENDS=	www/p5-Apache-Test

.include <bsd.port.mk>
