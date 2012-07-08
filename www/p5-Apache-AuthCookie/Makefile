# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT=		authentication and authorization via cookies
COMMENT-ap2-mod_perl=	authentication and authorization via cookies - ap2-mod_perl

MODULES=		cpan
V=			3.15
DISTNAME=		Apache-AuthCookie-3.15
PKG_NAME-ap2-mod_perl=	Apache-Auth-Cookie-${V}-ap2-mod_perl
FLAVORS=		ap2-mod_perl
CATEGORIES=		www
MASTER_SITES=		ftp://202.232.140.138/pub/FreeBSD/ports/distfiles/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/mod_perl>=1.27

FLAVOR?=
.if ${FLAVOR:L:Map2-mod_perl}
RUN_DEPENDS=		www/ap2-mod_perl>=1.999022
.endif

BUILD_DEPENDS=		${RUN_DEPENDS}

MPV=			1
.if ${FLAVOR:L:Map2-mod_perl}
REGRESS_FLAGS=		APACHE_TEST_APXS=/usr/local/sbin/apxs2 \
			APACHE_TEST_HTTPD=/usr/local/sbin/httpd2
MPV=			2
.endif

pre-configure:
	@perl -pi -e 's/ = mod_perl_version.*/ = ${MPV};/' ${WRKSRC}/Makefile.PL

# make regress must be done as non-root user
REGRESS_DEPENDS=	www/p5-Apache-Test

.include <bsd.port.mk>
