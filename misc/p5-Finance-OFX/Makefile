COMMENT=		"OFX client implementation"
DISTNAME=		Finance-OFX-2a
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		misc perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=     Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Data-GUID

SITES=		${SITE_PERL_CPAN:=../../authors/id/B/BF/BFOZ/}

WRKDIST=		${WRKDIR}/Finance-OFX-2

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
