# $OpenBSD$

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	0.1.10
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

#do-test: fake
#	cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
#		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
#		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
