# $OpenBSD$

COMMENT =		python interface to OpenStack Nova API

MODPY_EGG_VERSION =	2.25.0
DISTNAME =		python-novaclient-${MODPY_EGG_VERSION}
PKGNAME = 		py-novaclient-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		https://git.openstack.org/cgit/openstack/python-novaclient
MODPY_PI =		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-prettytable \
			www/py-httplib2 \
			devel/py-pbr \
			textproc/py-iso8601 \
			devel/py-oslo-i18n \
			devel/py-oslo-serialization \
			devel/py-oslo-utils \
			textproc/py-prettytable \
			www/py-requests \
			devel/py-simplejson \
			devel/py-six \
			devel/py-babel \
			net/py-keystoneclient

BUILD_DEPENDS =		${RUN_DEPENDS}

# XXX Haven't looked yet into what tests do
#NO_TEST =		Yes

.include <bsd.port.mk>
