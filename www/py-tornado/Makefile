# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:48 espie Exp $

COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	3.2
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		http://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=t/tornado/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

WANTLIB +=		pthread python2.7

# XXX wont run, since it needs the backports module

# XXX tests fail
do-test:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} PYTHONPATH=.\
		${MODPY_BIN} ./tornado/test/runtests.py

.include <bsd.port.mk>
