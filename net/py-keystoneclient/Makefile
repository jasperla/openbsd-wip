# $OpenBSD$

COMMENT =		python client library for OpenStack Identiti (Keystone)

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		python-keystoneclient-${MODPY_EGG_VERSION}
PKGNAME = 		py-keystoneclient-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://github.com/openstack/python-keystoneclient
MODPY_PI =		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			devel/py-pbr \
			devel/py-babel \
			textproc/py-iso8601 \
			devel/py-oslo-config \
			devel/py-oslo-i18n \
			devel/py-oslo-serialization \
			devel/py-oslo-utils \
			textproc/py-prettytable \
			www/py-requests \
			devel/py-stevedore

BUILD_DEPENDS =		${RUN_DEPENDS}

# XXX Haven't looked yet into what tests do
#NO_TEST =		Yes

.include <bsd.port.mk>
