# $OpenBSD $

COMMENT=	complete OS testing in a box via autotest

MODULES=	cpan
DISTNAME=	Tapper-TestSuite-AutoTest-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-MooseX-Log-Log4perl

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
