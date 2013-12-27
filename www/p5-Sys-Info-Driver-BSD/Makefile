# $OpenBSD $

COMMENT=	BSD driver for Sys::Info

MODULES=	cpan
DISTNAME=	Sys-Info-Driver-BSD-0.7801
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}

RUN_DEPENDS =	www/p5-Sys-Info-Base \
		www/p5-Unix-Processors \
		www/p5-Test-Sys-Info
#		www/p5-BSD-Sysctl

.include <bsd.port.mk>
