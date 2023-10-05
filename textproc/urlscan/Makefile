COMMENT =	terminal URL viewer (urlview replacement)

MODPY_EGG_VERSION =     1.0.1
DISTNAME =              urlscan-${MODPY_EGG_VERSION}

CATEGORIES =	textproc

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

HOMEPAGE =	https://github.com/that/urlscan

# LICENSE
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD = setuptools

WANTLIB =	${MODPY_WANTLIB}

LIB_DEPENDS =	${MODPY_LIB_DEPENDS}

RUN_DEPENDS =	devel/py-hatchling${MODPY_FLAVOR} \
		devel/py-hatch-vcs${MODPY_FLAVOR} \
		devel/py-urwid${MODPY_FLAVOR}

BUILD_DEPENDS =	devel/py-hatchling${MODPY_FLAVOR} \
		devel/py-hatch-vcs${MODPY_FLAVOR}

#TEST_DEPENDS =	

#CONFIGURE_STYLE =	

#MAKE_FLAGS =	

#NO_TEST =	Yes
#TEST_TARGET =	

.include <bsd.port.mk>
