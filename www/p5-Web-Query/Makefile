# $OpenBSD$

COMMENT =		yet another scraping library like jQuery

MODULES =		cpan
DISTNAME =		Web-Query-0.34
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		YANICK

RUN_DEPENDS =		www/p5-HTML-Parser \
			www/p5-HTML-Selector-XPath>=0.06 \
			www/p5-HTML-TreeBuilder-LibXML \
			www/p5-HTML-TreeBuilder-XPath \
			devel/p5-List-MoreUtils \
			www/p5-libwww

TEST_DEPENDS =		www/p5-HTML-Selector-XPath \
			www/p5-HTML-TreeBuilder-LibXML \
			www/p5-HTML-TreeBuilder-XPath \
			devel/p5-Test-Exception

.include <bsd.port.mk>
