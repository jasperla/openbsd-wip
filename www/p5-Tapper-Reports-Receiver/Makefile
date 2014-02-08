# $OpenBSD $

COMMENT=	receiver for Tapper test reports as TAP or TAP::Archive

MODULES=	cpan
DISTNAME=	Tapper-Reports-Receiver-4.1.3
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-AnyEvent \
		devel/p5-Data-DPath \
		devel/p5-DateTime-Format-Natural \
		devel/p5-DateTime-Format-Mail \
		devel/p5-Devel-Backtrace \
		devel/p5-File-MimeInfo \
		devel/p5-Hash-Merge-Simple \
		devel/p5-IO-String \
		devel/p5-LockFile-Simple \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-MooseX-Daemonize \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-YAML-Tiny \
		textproc/p5-String-Escape \
		www/p5-Tapper-Base \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \
		www/p5-Tapper-TAP-Harness

BUILD_DEPENDS=  ${RUN_DEPENDS}

TEST_DEPENDS=   databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp

.include <bsd.port.mk>
