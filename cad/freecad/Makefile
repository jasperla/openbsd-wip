COMMENT =	general purpose 3D CAD modeller
V = 		1.0.0
GH_ACCOUNT =	FreeCAD
GH_PROJECT =	FreeCAD
GH_TAGNAME =	$V

DISTFILES = 		freecad-{}${V}${EXTRACT_SUFX}

CATEGORIES =		cad

HOMEPAGE =		https://www.freecad.org/

# GPL2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Coin GL GLU OndselSolver Qt5Concurrent
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml TKBO TKBRep TKBin TKBinL TKBool
WANTLIB += TKCAF TKCDF TKDE TKDEGLTF TKDEIGES TKDESTEP TKDESTL
WANTLIB += TKFeat TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR
WANTLIB += TKLCAF TKMath TKMesh TKMeshVS TKOffset TKPrim TKRWMesh
WANTLIB += TKService TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF
WANTLIB += TKXSBase TKernel X11 boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_python312-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += c execinfo fontconfig freetype m pyside2.cpython-312
WANTLIB += python3.12 shiboken2.cpython-312 yaml-cpp z
WANTLIB += fmt xerces-c

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

RUN_DEPENDS   =		devel/desktop-file-utils \
			devel/microsoft-gsl \
			devel/swig \
			graphics/py-matplotlib \
			graphics/py-pivy \
			graphics/vtk \
			misc/shared-mime-info \
			x11/gtk+4,-guic

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/fmt \
			devel/doxygen \
			math/eigen3 \
			textproc/xerces-c

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			cad/opencascade \
			devel/boost \
			devel/fmt \
			devel/ondselsolver \
			devel/py-side2 \
			devel/py-side2,-shiboken \
			devel/yaml-cpp \
			graphics/coin \
			textproc/xerces-c \
			x11/qt5/qtsvg

# We don't have salome smesh, libmed, or libmedc
# https://github.com/SalomePlatform
CONFIGURE_ARGS +=	-DBUILD_FEM=OFF

CONFIGURE_ARGS +=	-DCMAKE_MODULE_PATH=${LOCALBASE}/lib/cmake/opencascade \
			-DOCE_DIR=${LOCALBASE}/include/opencascade \
			-DFREECAD_USE_EXTERNAL_ONDSELSOLVER=ON

MAKE_ENV +=	C_INCLUDE_PATH=/usr/X11R6/include

WRKDIST =		${WRKDIR}/FreeCAD-${V}

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
