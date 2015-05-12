# $OpenBSD: Makefile,v 1.6 2015/03/27 08:13:03 ajacoutot Exp $
USE_NINJA=No

COMMENT =		owncloud sync client

DISTNAME =		owncloudclient-1.8.1

SHARED_LIBS =		owncloudsync 1.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c lib/inotify/inotify lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns m pthread
WANTLIB += sqlite3

MASTER_SITES =		https://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.xz

MODULES =		converters/libiconv devel/cmake x11/qt4 gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/libinotify \
			security/qtkeychain

CONFIGURE_ARGS +=	-DBUILD_WITH_QT4=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -DHAVE_ICONV -DHAVE_ICONV_H \
				-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/inotify -I${X11BASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"

NO_TEST =		Yes

post-extract:
	mv ${WRKSRC}/cmake/modules/FindIconv.cmake \
		${WRKSRC}/cmake/modules/FindIconv_local.cmake
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/etc ${PREFIX}/share/examples/mirall

.include <bsd.port.mk>
