COMMENT=		Google Chat WebHooks module

MODULES=		cpan
VER=			0.3
DISTNAME=		Google-Chat-WebHooks-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5
CPAN_AUTHOR=		IGIBBS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test2-Suite \
		devel/p5-Class-Tiny

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
