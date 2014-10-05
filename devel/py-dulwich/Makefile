# $OpenBSD: Makefile,v 1.12 2014/03/25 16:18:02 sthen Exp $

COMMENT =	pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.9.7
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://samba.org/~jelmer/dulwich/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>
# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB = pthread

MASTER_SITES =		${MASTER_SITE_PYPI:=d/dulwich/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose \
		devel/py-gevent \
		devel/git,-main
RUN_DEPENDS =   devel/py-gevent

WANTLIB +=	${MODPY_WANTLIB}

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
