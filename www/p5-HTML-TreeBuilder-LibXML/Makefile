# $OpenBSD$

COMMENT =		HTML::TreeBuilder/XPath libxml compatible interface

MODULES =		cpan
DISTNAME =		HTML-TreeBuilder-LibXML-0.25
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-HTML-TreeBuilder-XPath \
			www/p5-libwww \
			www/p5-URI \
			textproc/p5-XML-LibXML

TEST_DEPENDS =		devel/p5-Test-Exception \
			www/p5-HTML-TreeBuilder-XPath

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
