# $OpenBSD $

COMMENT=	backend functions for CLI and Web	

MODULES=	cpan
DISTNAME=	Tapper-Cmd-4.1.8
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	databases/p5-DBI \
		devel/p5-DateTime \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-Slurp \
		devel/p5-File-ShareDir \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Kwalify \
		devel/p5-Moose \
		devel/p5-Perl6-Junction \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		net/p5-Net-OpenSSH \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Base \
		www/p5-Tapper-Reports \
		www/p5-Tapper-Schema \

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
