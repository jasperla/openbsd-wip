# $OpenBSD$

COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	4.2.1
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		shells

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} stdc++

MODULES =		lang/python

RUN_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-qtconsole ${PREFIX}/bin/jupyter-qtconsole${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
