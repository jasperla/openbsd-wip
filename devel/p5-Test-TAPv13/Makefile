# $OpenBSD $

COMMENT=	provide TAP v13 support to test scripts

MODULES=	cpan
DISTNAME=	Test-TAPv13-0.002
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS = ${RUN_DEPENDS}

RUN_DEPENDS =   devel/p5-Data-YAML \
		devel/p5-Sub-Exporter

.include <bsd.port.mk>
