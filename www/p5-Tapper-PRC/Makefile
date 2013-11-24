# $OpenBSD $

COMMENT=	program run control for test program automation	

MODULES=	cpan
DISTNAME=	Tapper-PRC-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    www/p5-Tapper-Remote \
		net/p5-Net-TFTP
#		www/p5-Tapper-Installer

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
