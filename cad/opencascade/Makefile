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
MASTER_SITES = 		https://git.dev.opencascade.org/gitweb/
EXTRACT_SUFX =		.tar.gz
DISTQUERY = 		?p=occt.git\;a=snapshot\;h=refs/tags/V${V:S/./_/g}\;sf=tgz
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{${DISTQUERY}}
WRKDIST = 		${WRKDIR}/occt-V${V:S/./_/g}

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk

MODTK_VERSION =		8.6

# Dependencies
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		${MODTK_LIB_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			shells/bash
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
# Programs that require GNU libtool to build instead of the OpenBSD one
# should use this option. Add a comment explaining why. Don't use this if
# a port requires libtool's .m4 files but otherwise can use OpenBSD libtool,
# in that case use "BUILD_DEPENDS=devel/libtool" instead.
#USE_LIBTOOL=		gnu
# Set CONFIGURE_STYLE to value corresponding to some standard configuration
#	  perl [modbuild]: perl's MakeMaker Makefile.PL (modbuild: perl's
#	  Module::Build Build.PL)
#	  gnu [autoconf] [old] [dest]: gnu style configure (old: no
#	  sysconfdir), (dest: add DESTDIR, does not handle it),
#	  autoconf: run autoconf to regenerate configure script. implies gnu.
#	            (see also "do-gen" target below).
#	XXX: cygnus products do NOT use autoconf for making the main
#		configure from configure.in
#	  imake [noman]: port uses imake for configuration.
#	  (noman: no man page installation)
#	  simple: port has its own configure script
#	  none: override default CONFIGURE_STYLE coming from a module
#	        (needed for some ports using lang/python, etc.)
#CONFIGURE_STYLE =
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS =	???
#CONFIGURE_ENV =	???

# for gnu stuff
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
# config.guess and others are copied here
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC})

# Is the build automagic or is it interactive
#
#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

CXXFLAGS +=             -I${X11BASE}/include
#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

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
