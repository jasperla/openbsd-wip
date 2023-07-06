COMMENT=	library for compression of 3D geometric meshes

GH_ACCOUNT=	google
GH_PROJECT=	draco
GH_TAGNAME=	1.5.6

SHARED_LIBS=	draco		0.0 # 1

CATEGORIES=	graphics archivers

HOMEPAGE=	https://google.github.io/draco/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON

# These bits borrowed from FreeBSD port:
CMAKE_TESTING_ON=	DRACO_TESTS
CMAKE_TESTING_TARGET=	draco_tests draco_factory_tests

post-test:
	@cd ${BUILD_WRKSRC} && \
		./draco_tests && \
		./draco_factory_tests

.include <bsd.port.mk>
