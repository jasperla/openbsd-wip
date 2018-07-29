# $OpenBSD$

COMMENT =	script to clone virtualenvs

MODPY_EGG_VERSION =	0.3.0
DISTNAME =	virtualenv-clone-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://github.com/edwardgeorge/virtualenv-clone

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	mv ${PREFIX}/bin/virtualenv-clone{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
