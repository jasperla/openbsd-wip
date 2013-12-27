# $OpenBSD $

COMMENT=	daemon and plugins to handle MCP actions	

MODULES=	cpan
DISTNAME=	Tapper-Action-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    databases/p5-DBIx-Class \
		devel/p5-App-Daemon \
                devel/p5-Class-Load \
                devel/p5-File-Slurp \
                devel/p5-File-ShareDir \
                devel/p5-Hash-Merge-Simple \
                devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
                devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
                devel/p5-Try-Tiny \
                devel/p5-YAML-Syck \
                www/p5-Tapper-Config \
                www/p5-Tapper-Model \
                www/p5-Tapper-Schema

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
