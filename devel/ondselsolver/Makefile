COMMENT =	assembly constraints and multibody dynamics code

GH_ACCOUNT =	Ondsel-Development
GH_PROJECT =	OndselSolver
GH_COMMIT =	09d6175a2ba69e7016fcecc4f384946a2f84f92d

DISTNAME =	${GH_PROJECT}
PKGNAME =	${DISTNAME}-2025.01.21

CATEGORIES =	devel

# LGPL-2.1
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake
COMPILER =	base-clang ports-clang

SHARED_LIBS +=  OndselSolver              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} m

.include <bsd.port.mk>
