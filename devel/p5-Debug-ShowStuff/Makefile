# $OpenBSD $

COMMENT=	collection of handy debugging routines

MODULES=	cpan
DISTNAME=	Debug-ShowStuff-1.16
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    textproc/p5-String-Util \
		textproc/p5-Text-TabularDisplay

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
