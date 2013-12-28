# $OpenBSD $

COMMENT=	program run control for test program automation	

MODULES=	cpan
DISTNAME=	Tapper-PRC-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Test-Deep \
		devel/p5-YAML \
		devel/p5-YAML-Syck \
		net/p5-Net-TFTP \
		www/p5-Tapper-Config \
#		www/p5-Tapper-Installer \
		www/p5-Tapper-Remote

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
