# $OpenBSD$

COMMENT =	record terminal sessions as SVG animations

DISTNAME =	termtosvg-${MODPY_EGG_VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/nbedos/termtosvg

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/py-pyte${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

MODULES =	lang/python

MODPY_EGG_VERSION = 0.5.0

MODPY_PI =	Yes
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS = Yes

.include <bsd.port.mk>
