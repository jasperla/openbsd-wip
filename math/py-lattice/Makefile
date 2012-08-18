# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Python library for modelling finite lattices

# http://python-lattice.googlecode.com/files/python-lattice-0.0.2.tar.gz
MODPY_EGG_VERSION =	0.0.2
DISTNAME =		python-lattice-${MODPY_EGG_VERSION}
PKGNAME =		py-lattice-${MODPY_EGG_VERSION}

CATEGORIES =		math

HOMEPAGE =		http://python-lattice.googlecode.com/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		lang/python

PKG_ARCH =		*

# install some brief documentation
DOCINST =	${WRKINST}${TRUEPREFIX}/share/doc/py-lattice/
post-install:
	${INSTALL_DATA_DIR} ${DOCINST}
	${INSTALL_DATA} ${WRKBUILD}/README ${DOCINST}

.include <bsd.port.mk>
