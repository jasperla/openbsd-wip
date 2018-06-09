# $OpenBSD$

COMMENT=		Scientific PYthon Development EnviRonment

MODPY_EGG_VERSION=	3.2.8
DISTNAME=		spyder-${MODPY_EGG_VERSION}

CATEGORIES=		devel editors

HOMEPAGE=		https://github.com/spyder-ide/spyder

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
FLAVORS=		python3
FLAVOR?=

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS+=	textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS+=	databases/py-pickleshare${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-jedi${MODPY_FLAVOR}>=0.9.0 \
		devel/py-nbconvert${MODPY_FLAVOR} \
		devel/py-rope${MODPY_FLAVOR}>=0.10.5 \
		devel/pyflakes${MODPY_FLAVOR} \
		devel/pylint${MODPY_FLAVOR} \
		graphics/py-opengl${MODPY_FLAVOR} \
		net/py-zmq${MODPY_FLAVOR} \
		shells/py-qtconsole${MODPY_FLAVOR}>=4.2.0 \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR}>=2.0.0 \
		textproc/py-numpydoc${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}>=2.0 \
		x11/py-qt5${MODPY_FLAVOR}<5.10 \
		x11/py-qtpy${MODPY_FLAVOR}>=1.2.0 \
		x11/py-qtawesome${MODPY_FLAVOR}>=0.4.1


.if ${FLAVOR:Mpython3}
MAJOR_VERSION=	3
PKGNAME=	spyder3-${MODPY_EGG_VERSION}
.else
MAJOR_VERSION=
.endif

SUBST_VARS+=	MAJOR_VERSION

#TEST_DEPENDS+=	devel/py-test${MODPY_FLAVOR} \
#		devel/py-test-qt${MODPY_FLAVOR} \
#		devel/py-test-mock${MODPY_FLAVOR} \
#		devel/py-test-cov${MODPY_FLAVOR} \
#		devel/py-test-xvfb${MODPY_FLAVOR} \
#		devel/py-test-timeout${MODPY_FLAVOR} \
#		devel/py-flaky${MODPY_FLAVOR} \
#		devel/py-mock${MODPY_FLAVOR} \
#		devel/py-pandas${MODPY_FLAVOR} \
#		graphics/py-Pillow${MODPY_FLAVOR} \
#		graphics/py-matplotlib${MODPY_FLAVOR} \
#		lang/cython${MODPY_FLAVOR} \
#		math/py-scipy${MODPY_FLAVOR} \
#		math/py-sympy${MODPY_FLAVOR}

post-install:
	mv ${WRKINST}${MODPY_SITEPKG}/spyder/doc ${PREFIX}/share/doc/spyder${MAJOR_VERSION}

.include <bsd.port.mk>
