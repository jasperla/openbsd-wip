COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_DISTV =	0.0.22
DISTNAME =	netifaces2-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =	lang/python
MODPY_PYBUILD =	maturin
MODPY_PI =	Yes

.include "crates.inc"

.include <bsd.port.mk>
