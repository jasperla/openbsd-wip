# $OpenBSD$

COMMENT =		lightweight scientific IDE for Python

MODPY_EGG_VERSION =	2.3.6
DISTNAME =		spyder-${MODPY_EGG_VERSION}
CATEGORIES =		editors devel
HOMEPAGE =		https://code.google.com/p/spyderlib/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes
EXTRACT_SUFX =	.zip

MODULES =	lang/python

BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/py-rope \
			x11/py-qt4

NO_TEST =	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/spyderlib/__init__.py

post-install:
	rm ${PREFIX}/bin/spyder_win_post_install.py
	mv ${WRKINST}${MODPY_SITEPKG}/spyderlib/doc ${PREFIX}/share/doc/spyder

.include <bsd.port.mk>
