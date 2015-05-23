# $OpenBSD$

COMMENT =		python client library for OpenStack Object Storage (Swift)

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		python-swiftclient-${MODPY_EGG_VERSION}
PKGNAME = 		py-swiftclient-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://github.com/openstack/python-swiftclient
MODPY_PI =		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			devel/py-simplejson \
			devel/py-futures \
			www/py-requests

BUILD_DEPENDS =		${RUN_DEPENDS}

# XXX Haven't looked yet into what tests do
#NO_TEST =		Yes

.include <bsd.port.mk>
