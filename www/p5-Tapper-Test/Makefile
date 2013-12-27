# $OpenBSD $

COMMENT=	utilities for Perl based Tapper testing

MODULES=	cpan
DISTNAME=	Tapper-Test-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Format-Human-Bytes \
		devel/p5-Sys-Info

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
