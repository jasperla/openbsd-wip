# $OpenBSD: Makefile,v 1.25 2015/12/03 21:24:30 sthen Exp $

COMMENT=	Basic Linear Algebra Subprograms

DISTNAME=	blas-3.6.0

SHARED_LIBS=	blas	2.1

CATEGORIES=	math

DISTFILES=	${DISTNAME}.tgz manpages.tgz:0

HOMEPAGE=	http://www.netlib.org/blas/

# freely available
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/
MASTER_SITES0=	${MASTER_SITES:S/blas/lapack/}
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/BLAS-3.6.0

MODULES=	fortran
MODFORTRAN_COMPILER = g77
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBblas_VERSION:R} \
		SHLIB_MINOR=${LIBblas_VERSION:E} \
		FC=${FC}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
USE_GROFF =	Yes

MANSRC=		${WRKDIR}/man/man3

# XXX manpages
# install(1): Argument list too long
#post-install:
#	for manpage in ${MANSRC}/*.3; do \
#		${INSTALL_MAN} ${MANSRC}/${manpage} \
#			${PREFIX}/man/man3; \
#		done

.include <bsd.port.mk>
