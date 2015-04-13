# $OpenBSD$

COMMENT =		note-taking tool inspired by Notational Velocity

MODPY_EGG_VERSION =     0.9.4
DISTNAME =              nvpy-${MODPY_EGG_VERSION}
CATEGORIES =		productivity
HOMEPAGE =		https://github.com/cpbotha/nvpy

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
BUILD_DEPENDS =     	devel/py-pip \
			textproc/markdown \
			lang/python/2.7,-tkinter

MODPY_SETUPTOOLS =      Yes
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
