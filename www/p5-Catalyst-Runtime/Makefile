# $OpenBSD: Makefile,v 1.25 2014/11/20 01:20:13 sthen Exp $

COMMENT=	MVC Web Application Framework

MODULES=	cpan
DISTNAME=	Catalyst-Runtime-5.90082
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Task-Weaken>=1.04 \
		devel/p5-Test-Fatal

RUN_DEPENDS=	devel/p5-namespace-autoclean>=0.09 \
		devel/p5-namespace-clean>=0.23 \
		devel/p5-B-Hooks-EndOfScope>=0.08 \
		devel/p5-Class-C3-Adopt-NEXT>=0.07 \
		devel/p5-Class-Load>=0.12 \
		devel/p5-Data-Dump \
		devel/p5-Data-OptList \
		devel/p5-List-MoreUtils \
		devel/p5-Hash-MultiValue \
		devel/p5-MRO-Compat \
		devel/p5-Module-Pluggable \
		devel/p5-Moose>=2.1204 \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast>=0.00903 \
		devel/p5-MooseX-Getopt>=0.48 \
		devel/p5-MooseX-MethodAttributes>=0.25 \
		devel/p5-MooseX-Role-WithOverloading>=0.09 \
		devel/p5-MooseX-Types \
		devel/p5-MooseX-Types-Common \
		devel/p5-MooseX-Types-LoadableClass \
		devel/p5-Path-Class>=0.09 \
		devel/p5-Stream-Buffered \
		www/p5-CGI-Struct \
		www/p5-Plack>=0.9991 \
		www/p5-Plack-Middleware-ReverseProxy>=0.04 \
		www/p5-Plack-Middleware-FixMissingBodyInRedirect>=0.09 \
		www/p5-Plack-Middleware-RemoveRedundantBody>=0.03 \
		www/p5-Plack-Test-ExternalServer \
		devel/p5-Safe-Isa \
		devel/p5-Sub-Exporter \
		devel/p5-Tree-Simple>=1.15 \
		devel/p5-Tree-Simple-VisitorFactory \
		devel/p5-Try-Tiny>=0.17 \
		textproc/p5-String-RewritePrefix>=0.004 \
		textproc/p5-Text-SimpleTable \
		www/p5-CGI-Simple>=1.109 \
		www/p5-HTML-Parser \
		www/p5-HTTP-Body>=1.06 \
		www/p5-HTTP-Message>=6.06 \
		www/p5-URI>=1.65 \
		www/p5-URI-ws \
		www/p5-HTTP-Request-AsCGI>=1.0 \
		www/p5-libwww>=5.805

TEST_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-MooseX-Daemonize \
		devel/p5-Test-Exception \
		devel/p5-YAML \
		www/fcgi \
		www/p5-Starman \
		devel/p5-JSON-MaybeXS

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
