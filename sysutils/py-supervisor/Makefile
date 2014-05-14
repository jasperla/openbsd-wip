# $OpenBSD$

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION=	3.0
DISTNAME=		supervisor-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		sysutils

HOMEPAGE=		http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=s/supervisor/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

#TEST_DEPENDS=	devel/py-minimock \
#			sysutils/py-lockfile

#post-install:
#	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-daemon/
#	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/py-daemon/

.include <bsd.port.mk>
