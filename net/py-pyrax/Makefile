# $OpenBSD$

COMMENT =		python interface to OpenStack API

MODPY_EGG_VERSION =	1.9.4
DISTNAME =		pyrax-${MODPY_EGG_VERSION}
PKGNAME = 		py-pyrax-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		https://github.com/rackspace/pyrax
MODPY_PI =		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-setuptools \
			www/py-httplib2 \
			devel/py-mock \
			devel/py-pbr \
			net/py-novaclient \
			net/py-swiftclient \
			security/py-keyring

BUILD_DEPENDS =		${RUN_DEPENDS}

# XXX Haven't looked yet into what tests do
#NO_TEST =		Yes

.include <bsd.port.mk>
