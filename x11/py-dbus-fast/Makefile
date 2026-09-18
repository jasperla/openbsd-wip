COMMENT=	A faster version of dbus-next

MODPY_DISTV=	2.44.3
DISTNAME=	dbus_fast-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	x11

HOMEPAGE=	https://github.com/bluetooth-devices/dbus-fast

MAINTAINER=	Emiel Kollof <emiel@kollof.nl>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PI_DIR=	d/dbus_fast
MODPY_PYBUILD=	poetry-core

BUILD_DEPENDS=	lang/cython devel/py-poetry-core
RUN_DEPENDS=	x11/dbus

.include <bsd.port.mk>
