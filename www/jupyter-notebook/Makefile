# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		web-based notebook for interactive computing

MODPY_EGG_VERSION =	4.0.6
DISTNAME =		notebook-${MODPY_EGG_VERSION}
PKGNAME =		jupyter-notebook-${MODPY_EGG_VERSION}

CATEGORIES =		www devel

HOMEPAGE =		http://jupyter.org/

# BSD XXX
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS +=		www/py-jinja2 \
			www/py-tornado \
			devel/py-ipython_genutils \
			devel/py-traitlets \
			devel/py-jupyter_core \
			devel/py-jupyter_client \
			devel/py-nbformat \
			devel/py-nbconvert \
			devel/py-ipykernel \
			devel/ipython

BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock \
			devel/py-nose \
			www/py-requests	\
			${FULLPKGNAME}:${FULLPKGPATH}

MODULES =		lang/python
MODPY_PI =		Yes

# XXX make docs

# one test fails due to abscence of terminado
# https://github.com/jupyter/notebook/issues/716
TEST_TMP =		${WRKDIR}/tmp
do-test:
	mkdir -p ${TEST_TMP}
	cd ${TEST_TMP} && \
		env TMPDIR=${TEST_TMP} LC_CTYPE="en_US.UTF-8" \
		PYTHONIOENCODING='utf-8' \
		${LOCALBASE}/bin/nosetests ${MODPY_SITEPKG}/notebook

.include <bsd.port.mk>
