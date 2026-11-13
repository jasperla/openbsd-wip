V=		2.7.1
COMMENT=	Software tool for formal verification of FSMs
EXTRACT_SUFX=	.tar.xz
DISTNAME=	NuSMV-${V}
CATEGORIES=	math

HOMEPAGE =	https://nusmv.fbk.eu/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB+= 	c m

BUILD_DEPENDS+=	devel/doxygen

MODULES+=	devel/meson
CONFIGURE_ARGS=	-Dwith-shell=disabled -Dbuild-doc=disabled
SITES=		https://nusmv.fbk.eu/distrib/${V}/

NO_TEST =	Yes

.include <bsd.port.mk>
