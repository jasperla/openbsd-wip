# $OpenBSD: Makefile,v 1.72 2015/06/17 20:03:11 sthen Exp $

# vax:   no IEEE arithmetic
# sparc: fPIC version of libgcc.a needed but not available
NOT_FOR_ARCHS =	vax sparc

COMMENT =	high-level language for numerical computations

VERSION =	4.0.0
DISTNAME =	octave-${VERSION}
CATEGORIES =	math

SHARED_LIBS =	cruft		5.0 \
		octave		5.0 \
		octinterp	4.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=	c m ncurses readline stdc++ z ${MODFORTRAN_WANTLIB} \
		fltk fftw3>=3 lapack>=3 blas>=1 pcre>=1 curl>=6

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt4

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		textproc/gsed

# configure checks for desktop-file-install(1)
BUILD_DEPENDS +=devel/desktop-file-utils

RUN_DEPENDS =	devel/gmake \
		devel/desktop-file-utils

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		devel/glpk \
		devel/pcre \
		graphics/GraphicsMagick \
		math/fftw3 \
		math/fftw3,float \
		math/lapack \
		math/blas \
		math/hdf5 \
		math/qhull \
		math/qrupdate \
		net/curl \
		x11/fltk

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		gnu
#CONFIGURE_STYLE =	autoconf
#AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS	=	${CONFIGURE_SHARED}
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="lrelease4" \
		F77=${FC}
MAKE_ENV =	LIBcruft_VERSION=${LIBcruft_VERSION} \
		LIBoctave_VERSION=${LIBoctave_VERSION} \
		LIBoctinterp_VERSION=${LIBoctinterp_VERSION}

.if ${MACHINE_ARCH} == "alpha"
CONFIGURE_ENV +=	FFLAGS="${FFLAGS}"
.endif

# needed to build on amd64
#GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
#GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
#SUBST_VARS =	GNU_ARCH VERSION
SUBST_VARS = VERSION

# need to use fpic version of libgcc.a
#post-configure:
#	@perl -pi -e 's#(gcc-lib/${GCC_ARCH}/[\d.]+)\s#\1/fpic #' \
#		${WRKBUILD}/Makeconf

.ifmake test
# some tests need HOME to be writable
PORTHOME =	/tmp
# define some user for tilde expansion test
MAKE_ENV +=	USER=nobody
.endif

post-test:
	@rm -f /tmp/oct-*

# fix ls-R and install HTML documentation
HTMLDOCS =	interpreter liboctave
post-install:
	@cd ${PREFIX}/share/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
	@cd ${PREFIX}/libexec/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
.for d in ${HTMLDOCS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/octave/${d}
	${INSTALL_DATA} ${WRKBUILD}/doc/${d}/HTML/*.html \
		${PREFIX}/share/doc/octave/${d}
.endfor

.include <bsd.port.mk>
