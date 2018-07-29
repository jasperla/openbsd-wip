# $OpenBSD$

DIST_SUBDIR=	spyder

CATEGORIES ?=	devel/spyder

MAINTAINER ?=	Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
