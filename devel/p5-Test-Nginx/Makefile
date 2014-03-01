# $OpenBSD$

COMMENT =	testing modules for Nginx C module development

MODULES =	cpan
DISTNAME =	Test-Nginx-0.22
PKGNAME =	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES =	devel www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Test-LongString \
		www/p5-HTTP-Response-Encoding \
		www/p5-LWP-UserAgent-Determined

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
