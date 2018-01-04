# $OpenBSD$

# So say the LLVM people.
ONLY_FOR_ARCHS =	amd64 arm64 armv7 i386 mips64 mips64el

V =		5.0.1
COMMENT =	LLVM OpenMP stand-alone implementation
DISTNAME =	openmp-${V}.src
PKGNAME =	openmp-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	devel lang

# Keep in sync.
SHARED_LIBS +=	omp                       0.0 # 0.0
SHARED_LIBS +=	gomp                      0.0 # 0.0
SHARED_LIBS +=	iomp5                     0.0 # 0.0

HOMEPAGE =	https://openmp.llvm.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Dual MIT/UIUC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =	https://releases.llvm.org/${V}/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

NO_TEST =	Yes

pre-configure:
	sed -i 's,$${LIBomp_VERSION},${LIBomp_VERSION},g' \
		${WRKSRC}/runtime/CMakeLists.txt

post-install:
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE} \
		${FILESDIR}/libgomp.spec ${PREFIX}/lib/libgomp.spec

.include <bsd.port.mk>
