# $OpenBSD$

COMMENT =	K Desktop Environment, RAW picture decoding C++ library
DISTNAME =	libkdcraw-${MODKDE_VERSION}
REVISION =	4

SHARED_LIBS =	kdcraw			0.0	# 20.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDELIB}/kdeui ${KDELIB}/kio ${KDELIB}/solid ${KDELIB}/threadweaver
WANTLIB += raw_r

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/libraw

CONFIGURE_ARGS =	-DWITH_OpenMP:Bool=FALSE

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
