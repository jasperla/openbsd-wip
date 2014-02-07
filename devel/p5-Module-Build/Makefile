# $OpenBSD $

COMMENT=	build and install Perl modules

MODULES=	cpan
DISTNAME=	Module-Build-0.4204
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=	PREFIX=""

TEST_DEPENDS=	archivers/p5-Archive-Zip

.include <bsd.port.mk>
