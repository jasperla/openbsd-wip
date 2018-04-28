# $OpenBSD: Makefile,v 1.4 2017/04/22 21:57:42 shadchin Exp $

COMMENT =	  	Scientific PYthon Development EnviRonment
MODPY_EGG_VERSION =	3.2.6
DISTNAME =		spyder-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/spyder-ide/spyder

MAINTAINER =		OpenBSD Mailing List <ports@openbsd.org>	

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes	

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}
RUN_DEPENDS = 	devel/py-cloudpickle${MODPY_FLAVOR} \
		databases/py-pickleshare${MODPY_FLAVOR} \
		devel/pyflakes${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}>=2.0 \
		shells/py-qtconsole${MODPY_FLAVOR}>=4.2.0 \
		devel/py-nbconvert${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR} \
		devel/py-codestyle${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		net/py-zmq${MODPY_FLAVOR} \
		textproc/py-numpydoc${MODPY_FLAVOR} \
		x11/py-qtpy${MODPY_FLAVOR}>=1.2.0 \
		x11/py-qtawesome${MODPY_FLAVOR}>=0.4.1 \
		textproc/py-chardet${MODPY_FLAVOR} \
		devel/py-rope${MODPY_FLAVOR}>=0.9.4 \
		devel/pylint${MODPY_FLAVOR} \
	 	x11/py-qt5${MODPY_FLAVOR}>=5.2 \
		devel/py-jedi${MODPY_FLAVOR} \
		graphics/py-opengl${MODPY_FLAVOR}

FLAVORS=                python3
FLAVOR?=

MAJOR_VERSION=
.if ${FLAVOR:Mpython3}
MAJOR_VERSION =	3
PKGNAME =	spyder${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.endif

SUBST_VARS+=		MAJOR_VERSION

.include <bsd.port.mk>
