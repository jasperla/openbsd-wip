# $OpenBSD $

COMMENT=	frontend web application based on Catalyst	

MODULES=	cpan
DISTNAME=	Tapper-Reports-Web-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-ShareDir \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Test-Deep \
		www/p5-Tapper-Schema

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
