# $OpenBSD $

COMMENT=	frontend web application based on Catalyst	

MODULES=	cpan
DISTNAME=	Tapper-Reports-Web-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-DateTime-Format-DateParse \
		devel/p5-DateTime-Format-Natural \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-ShareDir-Install \
		devel/p5-Perl6-Junction \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		databases/p5-Catalyst-Model-DBIC-Schema \
		www/p5-Catalyst-Controller-HTML-FormFu \
		www/p5-Catalyst-Plugin-ConfigLoader \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Static-Simple \
		www/p5-Catalyst-View-HTML-Mason \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \
		www/p5-Tapper-Testplan \
		www/p5-XML-Feed \
		#devel/p5-TAP-Formatter-HTML

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-Store-File \

.include <bsd.port.mk>
