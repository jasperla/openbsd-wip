# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:44 espie Exp $

COMMENT=	Catalyst development tools

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.39
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/p5-Config-General>=2.42 \
		devel/p5-File-ChangeNotify>=0.07 \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-ShareDir \
		devel/p5-Moose \
		devel/p5-MooseX-Daemonize \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-Module-Install>=1.02 \
		devel/p5-Path-Class>=0.09 \
		devel/p5-namespace-autoclean \
		devel/p5-namespace-clean \
		textproc/p5-Template>=2.14 \
		www/p5-Catalyst-Action-RenderView>=0.10 \
		www/p5-Catalyst-Plugin-ConfigLoader>=0.30 \
		www/p5-Catalyst-Plugin-Static-Simple>=0.28 \
		www/p5-Catalyst-Runtime>=5.90001 \
		www/p5-Starman

TEST_DEPENDS=	devel/p5-IPC-Run3 \
		devel/p5-Test-Fatal>=0.003

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=--skipdeps

.include <bsd.port.mk>
