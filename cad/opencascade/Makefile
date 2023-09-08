COMMENT =		platform for 3D CAD, CAM, and CAE
DPB_PROPERTIES =	parallel

V =			7.7.0
DISTNAME =		opencascade-${V}

.for LIB in TKBO TKBRep TKBin TKBinL TKBinTObj TKBinXCAF TKBool \
        TKCAF TKCDF TKDCAF TKDraw TKExpress TKFeat TKFillet TKG2d \
        TKG3d TKGeomAlgo TKGeomBase TKHLR TKIGES TKLCAF TKMath \
        TKMesh TKMeshVS TKOffset TKOpenGl TKOpenGlTest TKPrim \
        TKQADraw TKRWMesh TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase \
        TKSTL TKService TKShHealing TKStd TKStdL TKTObj TKTObjDRAW \
        TKTopAlgo TKTopTest TKV3d TKVCAF TKVRML TKViewerTest TKXCAF \
        TKXDE TKXDECascade TKXDEDRAW TKXDEIGES TKXDESTEP TKXMesh \
        TKXSBase TKXSDRAW TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel
SHARED_LIBS +=		${LIB} 0.0
.endfor

CATEGORIES =		cad
HOMEPAGE =		https://www.opencascade.com/
MAINTAINER = 		Ian Darwin <ian@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL X11 c execinfo fontconfig freetype
WANTLIB += m tcl86 tk86

# See https://dev.opencascade.org/content/packaging-again-debian
# Or maybe ${MASTER_SITE_FREEBSD_LOCAL:=thierry/}?
SITES = 		https://git.dev.opencascade.org/gitweb/
EXTRACT_SUFX =		.tar.gz
DISTQUERY = 		?p=occt.git;a=snapshot;h=refs/tags/V${V:S/./_/g};sf=tgz
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{${DISTQUERY}}
WRKDIST = 		${WRKDIR}/occt-V${V:S/./_/g}

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk

MODTK_VERSION =		8.6

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			shells/bash

CONFIGURE_ARGS +=	-DINSTALL_DIR_RESOURCE:STRING="share/opencascade/src" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

CXXFLAGS +=             -I${X11BASE}/include

# fix bash and make installed script names less generic
pre-configure:
	sed -i "s,custom,occt_custom,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,occt_env,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,occt_env,g" \
		${WRKSRC}/gen*
	sed -i "s,custom,occt_custom,g" \
		${WRKSRC}/gen*
	sed -i "s,env\.,occt_env\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom\.,occt_custom\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom_,occt_custom_,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,draw\.,occt_draw\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,/bin/bash,/usr/bin/env bash," \
		${WRKSRC}/adm/templates/*.sh*
	mv ${WRKSRC}/adm/templates/custom.sh.main \
		${WRKSRC}/adm/templates/occt_custom.sh.main
	mv ${WRKSRC}/adm/templates/custom.build.sh.in \
		${WRKSRC}/adm/templates/occt_custom.build.sh.in
	mv ${WRKSRC}/adm/templates/custom.install.sh.in \
		${WRKSRC}/adm/templates/occt_custom.install.sh.in
	mv ${WRKSRC}/adm/templates/draw.sh \
		${WRKSRC}/adm/templates/occt_draw.sh
	mv ${WRKSRC}/adm/templates/env.build.sh.in \
		${WRKSRC}/adm/templates/occt_env.build.sh.in
	mv ${WRKSRC}/adm/templates/env.install.sh.in \
		${WRKSRC}/adm/templates/occt_env.install.sh.in
	mv ${WRKSRC}/adm/templates/env.samples.sh.in \
		${WRKSRC}/adm/templates/occt_env.samples.sh.in

.include <bsd.port.mk>
