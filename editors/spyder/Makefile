# $OpenBSD$

COMMENT =		lightweight scientific IDE for Python

MODPY_EGG_VERSION =	3.0.1
DISTNAME =		spyder-${MODPY_EGG_VERSION}
CATEGORIES =		editors devel
HOMEPAGE =		https://github.com/spyder-ide/spyder

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		textproc/py-sphinx
RUN_DEPENDS =		databases/py-pickleshare \
			devel/desktop-file-utils \
			devel/py-nbconvert \
			devel/py-rope \
			devel/pyflakes \
			net/py-zmq \
			x11/py-qt5 \
			x11/py-qtawesome \
			x11/py-qtpy

NO_TEST =		Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/spyder/__init__.py

post-install:
	rm ${PREFIX}/bin/spyder_win_post_install.py
	mv ${WRKINST}${MODPY_SITEPKG}/spyder/doc ${PREFIX}/share/doc/spyder

.include <bsd.port.mk>
