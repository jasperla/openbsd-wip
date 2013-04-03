# $OpenBSD$

COMMENT =		LOLCODE interpreter

V =			0.10.4
REV =			e309811
DISTNAME =		v$V
PKGNAME =		lci-${V}

CATEGORIES =		lang

HOMEPAGE =		http://www.icanhaslolcode.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		http://github.com/justinmeza/lci/tarball/v${V}/
DIST_SUBDIR =		lci

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
TEST_DEPENDS =		devel/cmake \
			lang/python/${MODPY_VERSION}

WRKDIST =		${WRKDIR}/justinmeza-lci-${REV}

post-extract:
	perl -pi -e 's,python,${MODPY_BIN},' ${WRKSRC}/cmake/AddLolTest.cmake

.include <bsd.port.mk>
