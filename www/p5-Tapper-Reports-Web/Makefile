# $OpenBSD$

COMMENT =	frontend web application based on Catalyst

MODULES =	cpan
DISTNAME =	Tapper-Reports-Web-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	databases/p5-Catalyst-Model-DBIC-Schema \
		devel/catalyst \
		devel/p5-Data-DPath \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-DateParse \
		devel/p5-DateTime-Format-Natural \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-Find-Rule \
		devel/p5-File-ShareDir \
		devel/p5-File-ShareDir-Install \
		devel/p5-Getopt-Long \
		devel/p5-Hash-Merge \
		devel/p5-Hash-Merge-Simple \
		devel/p5-HTML-FromANSI \
		devel/p5-Module-Find \
		devel/p5-Moose \
		devel/p5-Perl6-Junction \
		devel/p5-Set-Intersection \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-YAML \
		devel/p5-YAML-Syck \
		textproc/p5-Template \
		www/fcgi \
		www/p5-Catalyst-Controller-HTML-FormFu \
		www/p5-Catalyst-Plugin-ConfigLoader \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Static-Simple \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-Store-File \
		www/p5-Catalyst-Runtime \
		www/p5-Catalyst-View-HTML-Mason \
		www/p5-FCGI-ProcManager \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \
		www/p5-Tapper-Testplan \
		www/p5-TAP-Formatter-HTML \
		www/p5-XML-Feed

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-Store-File \

.include <bsd.port.mk>
