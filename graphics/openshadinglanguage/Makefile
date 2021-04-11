# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT=	advanced shading language for production GI renderers

V=		1.11.13.0
GH_ACCOUNT=	imageworks
GH_PROJECT=	OpenShadingLanguage
GH_TAGNAME=	Release-${V}
DISTNAME=	${GH_PROJECT:L}-${V}

SHARED_LIBS +=  oslcomp			0.0 # 1.11
SHARED_LIBS +=  oslexec			0.0 # 1.11
SHARED_LIBS +=  oslnoise		0.0 # 1.11
SHARED_LIBS +=  oslquery		0.0 # 1.11

CATEGORIES=	graphics

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IexMath-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 OpenImageIO boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_system-mt
WANTLIB += boost_thread-mt c clang-cpp intl m pugixml python3.8
WANTLIB += util z

# Copyright
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/bison \
		devel/py-pybind11${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-pybind11${MODPY_FLAVOR}

LIB_DEPENDS=	devel/boost \
		devel/llvm \
		graphics/openexr \
		graphics/openimageio \
		textproc/pugixml

SUBST_VARS +=	MODPY_BIN

CONFIGURE_ARGS=	-DCMAKE_CXX_STANDARD=14 \
		-DLLVM_DIRECTORY=${LOCALBASE} \
		-DPYTHON_VERSION=${MODPY_VERSION} \
		-Dpybind11_ROOT=${LOCALBASE}/lib/python${MODPY_VERSION}/site-packages/pybind11 \
		-DOSL_BUILD_MATERIALX=ON

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/liboslexec/CMakeLists.txt \
		${WRKSRC}/src/shaders/MaterialX/CMakeLists.txt

post-install:
	find ${PREFIX} -name "*test*" -exec rm -rf {} +

.include <bsd.port.mk>
