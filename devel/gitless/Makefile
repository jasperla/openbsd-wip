# $OpenBSD$

COMMENT =		alternative user interface to git
DISTNAME =		gitless-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		http://gitless.com/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	0.8.3
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/libgit2/py-git2${MODPY_FLAVOR}

NO_TEST =		Yes
# PyPI distribution does not include tests, and the tests in project's repo seem
# to be too outdated to be useful anyway.
#
#TEST_DEPENDS =		devel/py-clint${MODPY_FLAVOR} \
#			devel/py-sh${MODPY_FLAVOR}
#
#do-test:
#	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} nosetests-3
#

.include <bsd.port.mk>
