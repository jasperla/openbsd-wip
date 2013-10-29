# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT=		authentication and authorization via cookies

DISTNAME=		Apache-AuthCookie-3.19
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		mod_perl->=1.27|ap2-mod_perl->=1.999022:www/mod_perl \
			devel/p5-Class-Load \
			devel/p5-autobox

BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		www/p5-Apache-Test>=1.35 \
			www/ap2-mod_perl \
			www/mod_perl

post-extract:
	@cp -R ${WRKSRC}/t ${WRKSRC}/t_ap2

do-test:
	@echo 'Need p5-Apache-Test>=1.35 for tests'

#.if ${MPV2}
#TEST_FLAGS=		APACHE_TEST_APXS=/usr/local/sbin/apxs2 \
#			APACHE_TEST_HTTPD=/usr/local/sbin/httpd2
#.endif

#pre-configure:
#	@perl -pi -e 's/ = mod_perl_version.*/ = ${MPV};/' ${WRKSRC}/Makefile.PL

# make test must be done as non-root user

.include <bsd.port.mk>
