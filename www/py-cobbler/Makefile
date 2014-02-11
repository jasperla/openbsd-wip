# $OpenBSD$

COMMENT =		Linux installation server

VERSION =		2.4.1
DISTNAME =		v${VERSION}
PKGNAME =		cobbler-${VERSION}

CATEGORIES =		sysutils www

HOMEPAGE =		http://www.cobblerd.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/cobbler/cobbler/archive/

RUN_DEPENDS=    	devel/py-simplejson \
			net/py-netaddr \
			textproc/py-yaml

BUILD_DEPENDS =    	textproc/py-yaml \
			lang/python/${MODPY_DEFAULT_VERSION_2}

MODULES =		lang/python

NO_TEST =		Yes

WRKSRC =		${WRKDIR}/${PKGNAME}/

.include <bsd.port.mk>
