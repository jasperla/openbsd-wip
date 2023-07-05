COMMENT=	compress/uncompress 3D meshes and point clouds
GH_ACCOUNT =	google
GH_PROJECT =	draco
GH_TAGNAME =	1.5.6
CATEGORIES =	archivers

# ASL 2
PERMIT_PACKAGE = Yes

MODULES =	devel/cmake

# These bits borrowed from FreeBSD port:
CMAKE_ON=		BUILD_SHARED_LIBS
CMAKE_TESTING_ON=	DRACO_TESTS
CMAKE_TESTING_TARGET=	draco_tests draco_factory_tests

post-test:
	@cd ${BUILD_WRKSRC} && \
		./draco_tests && \
		./draco_factory_tests

.include <bsd.port.mk>
