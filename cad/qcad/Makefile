# $OpenBSD: Makefile,v 1.28 2017/07/16 19:18:49 espie Exp $

COMMENT=	Qt-based 2D CAD system

GH_ACCOUNT =	qcad
GH_PROJECT =	qcad
GH_TAGNAME =	v3.19.2.0

CATEGORIES=	cad graphics

QCAD_VERSION =	0.0
QCAD_LIBS=	qcadcore \
		qcadecmaapi \
		qcadentity \
		qcadgrid \
		qcadgui \
		qcadoperations \
		qcadsnap \
		qcadspatialindex \
		qcadstemmer \
		qcadzip \
		spatialindexnavel \

.for _lib in ${QCAD_LIBS}
SHARED_LIBS+=	${_lib} ${QCAD_VERSION}
.endfor

HOMEPAGE=	https://www.qcad.org

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Sql Qt5Widgets Qt5Xml c m quazip
WANTLIB += z

MODULES =		x11/qt5 \
			devel/qmake

LIB_DEPENDS =		archivers/quazip

# Don't require specific Qt version
pre-configure:
	sed -i 's|$$$${QT_VERSION}|5.9.1|g' ${WRKSRC}/src/3rdparty/3rdparty.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/release/qcad-bin ${PREFIX}/bin/qcad
.for _lib in ${QCAD_LIBS}
	${INSTALL_DATA} ${WRKSRC}/release/lib${_lib}.so ${PREFIX}/lib/lib${_lib}.so.${QCAD_VERSION}
.endfor
	${INSTALL_DATA} ${WRKSRC}/release/{libdxflib.a,libopennurbs.a} ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qcad/scripts
	${INSTALL_DATA} ${WRKSRC}/examples/*.* ${PREFIX}/share/examples/qcad/
	${INSTALL_DATA} ${WRKSRC}/examples/scripts/* ${PREFIX}/share/examples/qcad/scripts/
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/qm
	${INSTALL_DATA} ${WRKSRC}/ts/*.qm ${PREFIX}/share/qcad/qm
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/fonts
	${INSTALL_DATA} ${WRKSRC}/fonts/*.* ${PREFIX}/share/qcad/fonts

# Don't require specific Qt version
pre-configure:
	sed -i "s|$${QT_VERSION}|${MODQT5_VERSION}|g" ${WRKSRC}/src/3rdparty/3rdparty.pro

.include <bsd.port.mk>
