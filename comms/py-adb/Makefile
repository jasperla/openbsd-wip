# $OpenBSD$

COMMENT =		Python ADB + Fastboot implementation
DISTNAME =		adb-${MODPY_EGG_VERSION}
PKGNAME =		py-adb-${MODPY_EGG_VERSION}
#GH_ACCOUNT =		google
#GH_PROJECT =		python-adb
#GH_COMMIT =		bed1a53d9574b6afbd63d783ed142371b0d1e584
CATEGORIES =		comms sysutils

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_EGG_VERSION =	1.2.0
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-libusb1 \
			security/py-rsa${MODPY_FLAVOR} \
			devel/py-progressbar${MODPY_FLAVOR}

NO_TEST =		Yes

post-patch:
	rm ${WRKSRC}/adb/sign_m2crypto.py

post-install:
.for f in adb fastboot
	echo '#!/bin/sh' >> ${PREFIX}/bin/$f
	echo '${MODPY_BIN} ${MODPY_SITEPKG}/adb/$f_debug.py "$$@"' \
		>> ${PREFIX}/bin/$f
	chmod a+x ${PREFIX}/bin/$f
.endfor

.include <bsd.port.mk>
