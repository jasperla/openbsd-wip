# $OpenBSD$

COMMENT =		Python ADB + Fastboot implementation
PKGNAME =		${MODPY_PY_PREFIX}adb-${MODPY_EGG_VERSION}
GH_ACCOUNT =		google
GH_PROJECT =		python-adb
GH_COMMIT =		e8bd3244210da9134a336dfd75f84974f0a33604
CATEGORIES =		comms sysutils

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_EGG_VERSION =	1.1.0
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-libusb1 \
			security/py-M2Crypto \
			devel/py-progressbar
TEST_DEPENDS =		${RUN_DEPENDS}

post-install:
.for f in adb fastboot
	echo '#!/bin/sh' >> ${PREFIX}/bin/$f
	echo '${MODPY_BIN} ${MODPY_SITEPKG}/adb/$f_debug.py "$$@"' \
		>> ${PREFIX}/bin/$f
	chmod a+x ${PREFIX}/bin/$f
.endfor

.include <bsd.port.mk>
