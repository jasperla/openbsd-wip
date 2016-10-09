# $OpenBSD$

COMMENT =		parser for and generator of the Git fastimport format
DISTNAME =		fastimport-${MODPY_EGG_VERSION}
PKGNAME =		py-fastimport-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jelmer/python-fastimport

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Useless to end users
PERMIT_PACKAGE_FTP =	Useless to end users

MODULES =		lang/python
MODPY_EGG_VERSION =	0.9.6
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NOSE =		

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} nosetests${MODPY_BIN_SUFFIX} \
		-d -w fastimport/tests

.include <bsd.port.mk>
