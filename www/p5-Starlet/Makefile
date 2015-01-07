# $OpenBSD$

COMMENT=	simple, high-performance PSGI/Plack HTTP server

MODULES=	cpan
DISTNAME=	Starlet-0.24
CATEGORIES=	www

CPAN_AUTHOR=	KAZUHO

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/p5-Parallel-Prefork>=0.13 \
		www/p5-Plack>=0.9920 \
		net/p5-Server-Starter>=0.06

TEST_DEPENDS=	www/p5-libwww \
		net/p5-Test-TCP

.include <bsd.port.mk>
