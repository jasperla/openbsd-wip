# $OpenBSD: Makefile,v 1.15 2013/07/01 10:39:18 sthen Exp $

COMMENT-main=		lint-like code checker for Python code
COMMENT-gui=		GUI for pylint

VERSION=		1.4.3
DISTNAME=		pylint-${VERSION}
PKGNAME-main=		pylint-${VERSION}
PKGNAME-gui=		pylint-gui-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.pylint.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MULTI_PACKAGES=		-main -gui

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-common${MODPY_FLAVOR} \
			devel/py-astroid${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS-gui=	${MODPY_TKINTER_DEPENDS} \
			devel/pylint=${VERSION}
TEST_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS+=		VERSION

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_ADJ_FILES =	bin/epylint \
			bin/pylint \
			bin/pylint-gui \
			bin/pyreverse \
			bin/symilar

# Note: pytest here is not the same as in devel/py-test
do-test: fake
	cd ${WRKINST}${MODPY_SITEPKG} && env \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		PYLINTHOME=${WRKINST} \
		${MODPY_BIN} /usr/local/bin/pytest${MODPY_BIN_SUFFIX}

post-install:
	rm ${WRKINST}${MODPY_SITEPKG}/pylint/test/unittest_lint.py.orig
.if ${FLAVOR:Mpython3}
.for i in epylint pylint pylint-gui pyreverse symilar
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/$i${MODPY_BIN_SUFFIX}
.endfor
.endif

.include <bsd.port.mk>
