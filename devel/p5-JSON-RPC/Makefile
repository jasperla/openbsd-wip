COMMENT=		"JSON RPC 2.0 Server Implementation"
DISTNAME=		JSON-RPC-1.06
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test-Pod \
		net/p5-Router-Simple

SITES=		${SITE_PERL_CPAN:=../../authors/id/D/DM/DMAKI/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
