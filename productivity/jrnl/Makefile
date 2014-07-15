# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		command line journal program

MODPY_EGG_VERSION =	1.8.4
DISTNAME =		jrnl-${MODPY_EGG_VERSION}

CATEGORIES =		productivity
HOMEPAGE =		http://maebert.github.io/jrnl/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=j/jrnl/}

MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

# XXX parsedatetime
# XXX tzlocal
# XXX py-dateutil too old in ports.
RUN_DEPENDS +=		security/py-crypto \
			devel/py-dateutil->=2.2 \
			devel/py-six->=1.6.1 \
			security/py-keyring->=3.3 \
			devel/py-tz
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		${RUN_DEPENDS}

# There are no tests, but test target it a NOP, so may aswell keep it.
#NO_TEST =		Yes

.include <bsd.port.mk>
