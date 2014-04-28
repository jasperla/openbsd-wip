 # $OpenBSD$

COMMENT =	parses Date::Parse compatible formats

MODULES =	cpan
DISTNAME =	DateTime-Format-DateParse-0.05
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-DateTime \
		devel/p5-DateTime-TimeZone \
		devel/p5-Time-TimeDate

BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
