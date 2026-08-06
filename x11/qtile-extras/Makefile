COMMENT=	extra modules and widgets for Qtile

MODPY_DISTV=	0.33.0
DISTNAME=	qtile_extras-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	x11

HOMEPAGE=	https://github.com/elParaguayo/qtile-extras

MAINTAINER=	Emiel Kollof <emiel@kollof.nl>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PI_DIR=	q/qtile_extras
MODPY_PYBUILD=	poetry-core

BUILD_DEPENDS=	x11/qtile

RUN_DEPENDS=	x11/qtile

.include <bsd.port.mk>
