# $OpenBSD$

COMMENT =		Python development workflow for humans

MODPY_EGG_VERSION =	2018.7.1
DISTNAME =		pipenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://docs.pipenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-certifi${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR} \
			devel/py-virtualenv-clone${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
.for s in pewtwo pipenv pipenv-resolver
	mv ${PREFIX}/bin/$s{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
