# $OpenBSD$

# This will all change once 0.2.21 is released.
COMMENT =	optimized BLAS library based on GotoBLAS2 1.13 BSD version
DISTNAME =	openblas-0.2.20
CATEGORIES =	math

GH_ACCOUNT =	xianyi
GH_PROJECT =	OpenBLAS
GH_COMMIT =	77b4dbd53bf0b4f318df892d46f2afe5f25398bf

HOMEPAGE =	https://www.openblas.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MODULES =	fortran
MODFORTRAN_COMPILER =	gfortran

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" FFLAGS="${CFLAGS}"

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
