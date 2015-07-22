# $OpenBSD: Makefile,v 1.73 2015/07/20 23:14:58 ajacoutot Exp $

COMMENT =	high-level language for numerical computations

VERSION =	4.0.0
DISTNAME =	octave-${VERSION}
CATEGORIES =	math

SHARED_LIBS +=	octave		6.0 # 3.0
SHARED_LIBS +=	octgui		0.0 # 1.0
SHARED_LIBS +=	octinterp	5.0 # 3.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB}
WANTLIB += FLAC GL GLU GraphicsMagick GraphicsMagick++ ICE QtGui
WANTLIB += QtNetwork QtOpenGL SM X11 X11-xcb Xau Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xt
WANTLIB += Xxf86vm amd arpack blas bz2 c camd ccolamd cholmod
WANTLIB += colamd crypto curl cxsparse drm expat fftw3 fftw3_threads
WANTLIB += fftw3f fftw3f_threads fltk fltk_gl fontconfig freetype
WANTLIB += g2c gl2ps glapi glpk gmp hdf5 iconv idn intl lapack
WANTLIB += lcms2 ltdl lzma m ncurses ogg pcre portaudio pthread
WANTLIB += pthread-stubs qhull qrupdate qscintilla2 sndfile sndio
WANTLIB += ssl stdc++ suitesparseconfig umfpack usbhid util vorbis
WANTLIB += vorbisenc xcb xcb-dri2 xcb-glx z

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt4

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		devel/desktop-file-utils \
		textproc/gsed

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		audio/libsndfile \
		audio/portaudio-svn \
		editors/qscintilla \
		devel/glpk \
		devel/pcre \
		graphics/GraphicsMagick \
		math/arpack \
		math/fftw3 \
		math/fftw3,float \
		math/lapack \
		math/blas \
		math/hdf5 \
		math/qhull \
		math/qrupdate \
		math/suitesparse \
		net/curl \
		print/gl2ps \
		x11/fltk

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
# needs GNU readline
CONFIGURE_ARGS	=	${CONFIGURE_SHARED} \
			--disable-readline \
			--disable-java
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="lrelease4" \
		F77=${FC}

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

.include <bsd.port.mk>
