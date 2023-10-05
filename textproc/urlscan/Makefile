COMMENT =	terminal URL viewer (urlview replacement)

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		urlscan-${MODPY_EGG_VERSION}

CATEGORIES =	textproc

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

HOMEPAGE =	https://github.com/firecat53/urlscan

# GPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD = hatchling

BUILD_DEPENDS =	devel/py-hatchling${MODPY_FLAVOR} \
		devel/py-hatch-vcs${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-urwid${MODPY_FLAVOR}>=1.2.1

NO_TEST =	Yes

.include <bsd.port.mk>
