# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:32 espie Exp $

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION=	3.0
DISTNAME=		supervisor-${MODPY_EGG_VERSION}
PKGNAME=		py-supervisor-${MODPY_EGG_VERSION}
#REVISION=		1

CATEGORIES=		sysutils

HOMEPAGE=		http://pypi.python.org/pypi/supervisor/

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
