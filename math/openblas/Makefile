# $OpenBSD$

# This will all change once 0.2.21 is released.
COMMENT =	optimized BLAS library based on GotoBLAS2 1.13 BSD version
DISTNAME =	openblas-0.2.20
CATEGORIES =	math

SHARED_LIBS +=  openblas                  0.0 # 0.0

GH_ACCOUNT =	xianyi
GH_PROJECT =	OpenBLAS
GH_COMMIT =	dbafe6357bf072eb648c00550fd0a920f8e4bd6e

HOMEPAGE =	https://www.openblas.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MODULES =	fortran
MODFORTRAN_COMPILER =	gfortran

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" FFLAGS="${CFLAGS}" \
		LIBopenblas_VERSION="${LIBopenblas_VERSION}"

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
