# $OpenBSD$

COMMENT =	'prettifier for Test::More'

MODULES =	cpan
DISTNAME =	Test-Pretty-0.27
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <andrew@cpan.org>
#CPAN_AUTHOR =	TOKUHIROM

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE+=modbuild

RUN_DEPENDS =	devel/p5-Scope-Guard \
		devel/p5-Term-Encoding

TEST_DEPENDS =	devel/p5-Test-Requires

.include <bsd.port.mk>
