# $OpenBSD$

COMMENT =	K Desktop Environment, math features
DISTNAME =	analitza-${MODKDE_VERSION}

SHARED_LIBS =	analitza		0.0	# 4.7
SHARED_LIBS +=	analitzagui		0.0	# 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml ncurses readline

CONFIGURE_ARGS=	-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

post-extract:
	cp ${FILESDIR}/FindNcurses.cmake ${WRKSRC}/cmake/

.include <bsd.port.mk>
