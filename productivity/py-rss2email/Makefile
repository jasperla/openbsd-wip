# $OpenBSD $

COMMENT =	python script that converts RSS/Atom newsfeeds to email

MODPY_EGG_VERSION = 3.5
DISTNAME =	rss2email-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	productivity textutils

HOMEPAGE =	https://pypi.python.org/pypi/rss2email/
# http://www.allthingsrss.com/rss2email/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/rss2email/}

MODPY_VERSION = 3.3

MODULES =		lang/python

RUN_DEPENDS =	textproc/py-feedparser \
				converters/html2text

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rss2email/
		${INSTALL_DATA} ${WRKDIST}/{CHANGELOG,COPYING,PKG-INFO,README} ${PREFIX}/share/doc/rss2email/
		${INSTALL_DATA} ${WRKDIST}/r2e.1 ${PREFIX}/share/doc/rss2email/

do-test:
		cd ${WRKSRC} && @PYTHONPATH=. ./test/test.py test/allthingsrss
		@PYTHONPATH=. ./test/test.py test/allthingsrss/1.config

.include <bsd.port.mk>
