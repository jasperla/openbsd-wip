# $OpenBSD $

COMMENT=	Moose like types for Moo

MODULES=	cpan
DISTNAME=	MooX-Types-MooseLike-0.25
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Module-Runtime \
		devel/p5-Test-Fatal	

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
