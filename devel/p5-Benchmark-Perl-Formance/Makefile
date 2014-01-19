# $OpenBSD $

COMMENT=	PerlFormance - Benchmark Suite

MODULES=	cpan
DISTNAME=	Benchmark-Perl-Formance-0.33
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Data-DPath \
		devel/p5-Data-Structure-Util \
		devel/p5-Data-YAML \
		devel/p5-Devel-Platform-Info \
		devel/p5-List-MoreUtils \
		devel/p5-Test-More

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
