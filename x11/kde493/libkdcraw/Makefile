# $OpenBSD$

COMMENT =	K Desktop Environment, RAW picture decoding C++ library
DISTNAME =	libkdcraw-${MODKDE_VERSION}

SHARED_LIBS =	kdcraw			0.0	# 20.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio
WANTLIB += jpeg lcms

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/lcms \
		graphics/jpeg

CONFIGURE_ARGS =	-DWITH_OpenMP:Bool=FALSE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
