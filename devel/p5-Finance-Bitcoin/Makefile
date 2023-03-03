COMMENT=		"manage a bitcoin instance"
DISTNAME=		Finance-Bitcoin-0.902
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Moo \
		devel/p5-JSON-RPC

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/T/TO/TOBYINK/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
