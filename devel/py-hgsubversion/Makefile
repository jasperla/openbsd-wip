# $OpenBSD$

COMMENT =		Subversion client Mercurial extension

MODPY_EGG_VERSION =	1.8.3
DISTNAME =		py-hgsubversion-${MODPY_EGG_VERSION}
CATEGORIES =		devel net

HOMEPAGE =		http://bitbucket.org/durin42/hgsubversion/overview/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/durin42/hgsubversion/get/
DISTFILES =		${DISTNAME}{${MODPY_EGG_VERSION}}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/mercurial \
			devel/py-subvertpy
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

WRKDIST =		${WRKDIR}/durin42-hgsubversion-759cafce6bec

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} tests/run.py -v

.include <bsd.port.mk>
