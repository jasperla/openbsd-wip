# $OpenBSD $

COMMENT=	alternative 'prove' which reports results to Tapper

MODULES=	cpan
DISTNAME=	App-Tapper-prove-0.002
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-MockModule \
		devel/p5-TAP-Harness-Archive \
		devel/p5-Test-Deep \
		devel/p5-Test-MockModule \
		devel/p5-YAML-XS

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
