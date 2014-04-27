# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		ssl.match_hostname() function from Python 3.4

MODPY_EGG_VERSION =	3.4.0.2
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =	https://pypi.python.org/pypi/backports.ssl_match_hostname

# Python Software Foundation License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=b/backports.ssl_match_hostname/}

MODULES =		lang/python
RUN_DEPENDS =		python-<3.2:lang/python/${MODPY_VERSION} # comes built in after 3.2

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
