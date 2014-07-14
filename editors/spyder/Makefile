# $OpenBSD$

COMMENT =		lightweight scientific IDE for Python

MODPY_EGG_VERSION =	2.2.5
DISTNAME =		spyder-${MODPY_EGG_VERSION}
PKGNAME =		py-spyder-${MODPY_EGG_VERSION}
CATEGORIES =		editors devel
HOMEPAGE =		https://code.google.com/p/spyderlib/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://spyderlib.googlecode.com/files/
EXTRACT_SUFX =	.zip

MODULES = lang/python

BUILD_DEPENDS =	textproc/py-sphinx
RUN_DEPENDS =	x11/py-qt4

NO_TEST =	Yes

post-build:
	${LOCALBASE}/bin/sphinx-build ${WRKBUILD}/doc ${WRKBUILD}/html

post-install:
	rm ${PREFIX}/bin/spyder_win_post_install.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spyder
	cp -r ${WRKBUILD}/html/* ${PREFIX}/share/doc/spyder/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/spyder/

.include <bsd.port.mk>
