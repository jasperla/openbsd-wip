# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:44 sthen Exp $

COMMENT =	Qt Jabber (XMPP) client

DISTNAME =	psi-1.4
CATEGORIES =	net

HOMEPAGE =	https://psi-im.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=psi/}
EXTRACT_SUFX =	.tar.xz

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5Svg Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml SM X11 Xext c hunspell-1.6
WANTLIB += idn m qca-qt5 xcb z

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		devel/libidn \
			security/qca-qt5 \
			textproc/hunspell \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qtx11extras \
			x11/qt5/qtwebkit

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/qt5/qtimageformats

CONFIGURE_ARGS +=	-DENABLE_WEBKIT=ON \
			-DUSE_WEBENGINE=OFF \
			-DUSE_CCACHE=OFF

pre-configure:
	mv ${WRKSRC}/version ${WRKSRC}/version_psi
	sed -i 's,${PROJECT_SOURCE_DIR}/version,&_psi,' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
