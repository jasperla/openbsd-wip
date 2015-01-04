# $OpenBSD$

COMMENT =		lightweight yet powerful web application framework

MODULES =		cpan
DISTNAME =		Dancer2-0.158000
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

BUILD_DEPENDS = 	${RUN_DEPENDS} \
			devel/p5-File-ShareDir-Install

RUN_DEPENDS = 		devel/p5-App-Cmd \
			devel/p5-Class-Load \
			devel/p5-Config-Any \
			www/p5-HTTP-Body \
			www/p5-HTTP-Date \
			www/p5-HTTP-Message \
			devel/p5-Hash-Merge-Simple \
			converters/p5-JSON \
			mail/p5-MIME-Types \
			devel/p5-Moo>=1.003000 \
			devel/p5-MooX-Types-MooseLike \
			www/p5-Plack>=1.0029 \
			www/p5-Plack-Middleware-FixMissingBodyInRedirect \
			www/p5-Plack-Middleware-RemoveRedundantBody \
			devel/p5-Return-MultiLevel \
			devel/p5-Safe-Isa \
			textproc/p5-Template \
			textproc/p5-Template-Tiny \
			devel/p5-YAML

TEST_DEPENDS =		sysutils/p5-Capture-Tiny \
			www/p5-HTTP-Body \
			devel/p5-Test-Fatal \
			devel/p5-Test-Memory-Cycle>=1.04 \
			devel/p5-Test-MockTime \
			devel/p5-YAML

# Perl
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
