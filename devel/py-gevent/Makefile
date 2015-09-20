# $OpenBSD: Makefile,v 1.4 2015/04/02 14:21:14 jasper Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

CATEGORIES =		devel
HOMEPAGE =		http://www.gevent.org/

# MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} event eventextra pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
#MODPY_DISTUTILS_BUILD =	build --build-base=${WRKSRC} \
#			-I${LOCALBASE}/include -L${LOCALBASE}/lib

LIB_DEPENDS =		devel/libeventextra
RUN_DEPENDS =		devel/py-greenlet

.include <bsd.port.mk>
