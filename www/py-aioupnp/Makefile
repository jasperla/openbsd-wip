# $OpenBSD: Makefile,v 1.16 2021/11/02 00:02:52 sthen Exp $

COMMENT =		UPnP for asyncio

MODPY_EGG_VERSION =	0.0.18
DISTNAME =		aioupnp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# XXX some tests fail as we don't have ports for re_assert and async_generator
MODPY_PYTEST =		Yes

RUN_DEPENDS =		net/py-netifaces${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

# junk piles seen in pypi distribution of 3.7.3, 3.7.4
#post-extract:
#	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
