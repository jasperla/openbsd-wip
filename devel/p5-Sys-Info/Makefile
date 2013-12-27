# $OpenBSD $

COMMENT=	fetch information from the host system	

MODULES=	cpan
DISTNAME=	Sys-Info-0.78
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS = ${RUN_DEPENDS}

RUN_DEPENDS = 	www/p5-Sys-Info-Base \
		www/p5-Sys-Info-Driver-BSD \
		www/p5-Test-Sys-Info

.include <bsd.port.mk>
