# $OpenBSD $

COMMENT=	HTML::Mason rendering for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-View-HTML-Mason-0.18
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl 5
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Data-Visitor \
		devel/p5-MooseX-Types \
		sysutils/p5-Capture-Tiny \
		www/p5-Catalyst-Devel \
		www/p5-Catalyst-Runtime

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
