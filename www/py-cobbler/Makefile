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

RUN_DEPENDS=    	devel/py-cheetah \
			devel/py-simplejson \
			net/py-netaddr \
			textproc/py-yaml \
			www/py-urlgrabber

BUILD_DEPENDS =    	lang/python/${MODPY_DEFAULT_VERSION_2}

MODULES =		lang/python
NO_TEST =		Yes
WRKSRC =		${WRKDIR}/${PKGNAME}/


#post-install:
#        ${INSTALL_DATA} ${WRKSRC}/include/disorder.h ${PREFIX}/include
#        ${INSTALL_PROGRAM} ${WRKSRC}/tool/ropy ${PREFIX}/bin

.include <bsd.port.mk>
