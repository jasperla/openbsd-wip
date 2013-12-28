# $OpenBSD $

COMMENT=	central master control program of Tapper automation	

MODULES=	cpan
DISTNAME=	Tapper-MCP-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-App-Daemon \
		devel/p5-Class-C3 \
		devel/p5-Class-Load \
                devel/p5-Devel-Backtrace \
                devel/p5-Data-DPath \
                devel/p5-Hash-Merge-Simple \
                #devel/p5-Kwalify \
                devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
                devel/p5-Moose \
                devel/p5-MooseX \
                devel/p5-MRO-Compat \
		devel/p5-Perl6-Junction \
		devel/p5-Sysadm-Install \
                devel/p5-TAP-DOM \
                devel/p5-Test-Deep \
                devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
                devel/p5-Try-Tiny \
                devel/p5-YAML-Syck \
                devel/p5-YAML \
                devel/p5-aliased \
                devel/p5-common-sense \
		net/p5-Net-OpenSSH \
		net/p5-Net-SSH-Perl \
		www/p5-LWP-UserAgent-Determined \
                www/p5-Tapper-Base \
                www/p5-Tapper-Cmd \
                www/p5-Tapper-Config \
                www/p5-Tapper-Model \
                www/p5-Tapper-Producer \
                www/p5-Tapper-Schema

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
