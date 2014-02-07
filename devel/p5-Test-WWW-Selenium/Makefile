# $OpenBSD $

COMMENT=	test applications using Selenium Remote Control

MODULES=	cpan
DISTNAME=	Test-WWW-Selenium-1.36
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Mock-LWP

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
