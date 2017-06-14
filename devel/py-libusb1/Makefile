# $OpenBSD$

COMMENT =		python interface to libusb
DISTNAME =		libusb1-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_EGG_VERSION =	1.6.4
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/libusb1
TEST_DEPENDS =		${RUN_DEPENDS}

#FLAVORS =		python3
#FLAVOR ?=

.include <bsd.port.mk>
