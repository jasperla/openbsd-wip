# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		TeX Live texmf subsetter tool and Python library.

DISTNAME =		texscythe-${MODPY_EGG_VERSION}
PKGNAME =		py-texscythe-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	0.1.1

CATEGORIES =		devel print

HOMEPAGE =		https://github.com/vext01/texscythe
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
RUN_DEPENDS =		databases/py-sqlalchemy
TEST_DEPENDS =		devel/py-test

do-test:
	@${MODPY_TEST_TARGET} --pytest-args="--runslow"

EXAMPLES =		${PREFIX}/share/examples/py-texscythe/
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/texlive2014.tlpdb.gz ${EXAMPLES}

.include <bsd.port.mk>
