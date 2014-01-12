# $OpenBSD $

COMMENT=	unified cache handling interface

MODULES=	cpan
DISTNAME=	CHI-0.58
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Carp-Assert \
		devel/p5-Data-UUID \
		devel/p5-List-MoreUtils \
		textproc/p5-String-RewritePrefix \
		devel/p5-Task-Weaken \
		devel/p5-Test-Class \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Warn

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
