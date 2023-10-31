COMMENT=		OpenGL bindings to perl

MODULES=		cpan
VER=			0.70
DISTNAME=		OpenGL-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		CHM

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= graphics/freeglut

MAKE_ENV += DISPLAY=${DISPLAY}
CONFIGURE_ENV += DISPLAY=${DISPLAY}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
