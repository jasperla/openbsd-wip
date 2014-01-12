# $OpenBSD $

COMMENT=	DPath module

MODULES=	cpan
DISTNAME=	Data-DPath-0.49
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Class-XSAccessor \
		devel/p5-Iterator-Util \
		devel/p5-List-MoreUtils \
                devel/p5-aliased

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
