# $OpenBSD$

COMMENT =		Python Build Reasonableness

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		oslo.serialization-${MODPY_EGG_VERSION}
PKGNAME =		py-oslo-serialization-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/oslo.serialization
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-pbr \
				devel/py-babel \
				devel/py-six \
				net/py-msgpack \
				devel/py-oslo-utils \
				textproc/py-iso8601 \
				devel/py-tz

BUILD_DEPENDS =	${RUN_DEPENDS}

#NO_TEST =	Yes

.include <bsd.port.mk>
