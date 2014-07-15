# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		store and access your passwords safely

MODPY_EGG_VERSION =	3.8
DISTNAME =		keyring-${MODPY_EGG_VERSION}
PKGNAME =		py-keyring-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.zip

CATEGORIES =		security devel

HOMEPAGE =		https://bitbucket.org/kang/python-keyring-lib

# PSF and MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=k/keyring/}

MODPY_SETUPTOOLS =	Yes
MODULES =		lang/python

# We don't pull in py-fs, since it has issues on OpenBSD.
# Looks mostly like the test suite itself is broken though.
# https://code.google.com/p/pyfilesystem/issues/detail?id=179
RUN_DEPENDS =		devel/py-gdata \
			security/py-keyczar \
			security/py-crypto
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock \
			devel/py-test

# setup.py installs egg info with weird modes.
post-install:
	chmod -R 755 ${WRKINST}${MODPY_SITEPKG}/keyring-*.egg-info/

do-test:
	${LOCALBASE}/bin/py.test ${WRKBUILD}/lib/keyring/tests/

.include <bsd.port.mk>
