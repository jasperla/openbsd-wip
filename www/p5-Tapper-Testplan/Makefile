# $OpenBSD $

COMMENT=	testplan support with TaskJuggler interoperability

MODULES=	cpan
DISTNAME=	Tapper-Testplan-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-CHI \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-DateTime-Format-Natural \
		devel/p5-File-ShareDir \
		devel/p5-File-Slurp \
		devel/p5-Hash-Merge \
		devel/p5-Moose \
		devel/p5-Module-Find \
		devel/p5-Test-Differences \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		mail/p5-Email-Sender \
		textproc/p5-Template \
		textproc/p5-Text-CSV \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
