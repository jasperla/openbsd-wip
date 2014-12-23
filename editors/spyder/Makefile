# $OpenBSD$

COMMENT =		lightweight scientific IDE for Python

MODPY_EGG_VERSION =	2.3.2
DISTNAME =		spyder-${MODPY_EGG_VERSION}
CATEGORIES =		editors devel
HOMEPAGE =		https://code.google.com/p/spyderlib/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=s/spyder/}
EXTRACT_SUFX =	.zip

MODULES =	lang/python

BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/py-rope \
			x11/py-qt4

NO_TEST =	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/spyderlib/__init__.py

post-install:
	rm ${PREFIX}/bin/spyder_win_post_install.py
	mv ${WRKINST}${MODPY_SITEPKG}/spyderlib/doc ${PREFIX}/share/doc/spyder

.include <bsd.port.mk>
