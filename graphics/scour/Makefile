# $OpenBSD$

COMMENT =		SVG scrubber
CATEGORIES =		graphics
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>
HOMEPAGE =		http://www.codedread.com/scour/

PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		codedread
GH_PROJECT =		scour
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_EGG_VERSION =	0.32
MODPY_SETUPTOOLS =	Yes

do-test:
	@cd ${WRKDIST} && ${MODPY_BIN} testscour.py
	@cd ${WRKDIST} && ${MODPY_BIN} testcss.py

.include <bsd.port.mk>
