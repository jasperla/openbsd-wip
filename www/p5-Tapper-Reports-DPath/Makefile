# $OpenBSD $

COMMENT=	extended DPath functionality for Tapper reports

MODULES=	cpan
DISTNAME=	Tapper-Reports-DPath-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-CHI \
		devel/p5-Class-C3 \
		devel/p5-Data-DPath  \
		devel/p5-DateTime \
		devel/p5-Data-Structure-Util \
		devel/p5-Module-Find \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-Sub-Exporter \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-Deep \
		devel/p5-YAML-XS \
		textproc/p5-Template \
		www/p5-HTML-Mason \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS=  ${RUN_DEPENDS}

TEST_DEPENDS=   databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-Import-Into \
		devel/p5-Module-Runtime \
		devel/p5-Moo \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Time-Duration-Parse \
		textproc/p5-String-RewritePrefix

.include <bsd.port.mk>
