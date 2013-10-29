# $OpenBSD$

COMMENT =	simple viewer for NFO files
MODPY_EGG_VERSION =	1.13
DISTNAME =	nfoview-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	textproc x11

HOMEPAGE =	http://home.gna.org/nfoview/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.gna.org/nfoview/${MODPY_EGG_VERSION}/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool
MODPY_VERSION =	3.3

RUN_DEPENDS =	devel/py-gobject3,python3 \
		fonts/terminus-font

TEST_DEPENDS =	devel/py-test,python3

post-patch:
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py
	@rm ${WRKSRC}/nfoview/test/*.orig

do-test:
	cd ${WRKSRC}/nfoview && ${LOCALBASE}/bin/py.test-3 unittest.py
	cd ${WRKSRC}/nfoview/test && ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
