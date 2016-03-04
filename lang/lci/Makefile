# $OpenBSD$

COMMENT =		LOLCODE interpreter

V =			0.10.5

CATEGORIES =		lang

HOMEPAGE =		http://lolcode.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

GH_ACCOUNT =		justinmeza
GH_PROJECT =		lci
GH_TAGNAME =		v$V

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
TEST_DEPENDS =		devel/cmake \
			lang/python/${MODPY_VERSION}

post-extract:
	perl -pi -e 's,python,${MODPY_BIN},' ${WRKSRC}/cmake/AddLolTest.cmake

.include <bsd.port.mk>
