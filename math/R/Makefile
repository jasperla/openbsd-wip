# $OpenBSD: Makefile,v 1.43 2011/09/16 10:31:22 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	clone of S, a powerful math/statistics/graphics language
DISTNAME=	R-2.13.1
REVISION=	0
BROKEN =	have to update to other porting efforts, don't use this one.

SHARED_LIBS+=	Rblas 213.1
SHARED_LIBS+=	Rlapack 213.1

CATEGORIES=    	math
HOMEPAGE=	http://www.r-project.org/

# GPL v2 or v3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+= 	GL ICE SM X11 Xext Xmu Xrender Xss Xt bz2 c cairo expat \
		fontconfig freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 icui18n icuuc jpeg lzma m ncurses pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		pthread-stubs readline tiff xcb xcb-render xcb-shm z \
		${MODFORTRAN_WANTLIB} ${MODTK_WANTLIB}

MASTER_SITES=	http://cran.r-project.org/src/base/R-2/ \
		http://cran.uk.r-project.org/src/base/R-2/ \
		http://cran.us.r-project.org/src/base/R-2/ \
		http://cran.dk.r-project.org/src/base/R-2/

USE_GROFF=	Yes
MODULES=	fortran devel/gettext x11/tk
MODFORTRAN_COMPILER = g77

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS} \
		print/texlive/base

LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS} \
		${MODTK_LIB_DEPENDS} \
		archivers/bzip2 \
		archivers/xz \
		graphics/cairo \
		graphics/jpeg \
		devel/glib2 \
		devel/pango \
		graphics/png \
		graphics/tiff \
		textproc/icu4c

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-readline --with-tcltk \
		--with-tcl-config=${MODTCL_CONFIG} \
		--with-tk-config=${MODTK_CONFIG} \
		--with-system-zlib --with-system-bzlib --with-system-pcre

CONFIGURE_ENV=	FFLAGS="${FFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_DATA='install -c -m 644' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_SCRIPT='install -c -m 555' \
		LIBRlapack_VERSION=${LIBRlapack_VERSION} \
		LIBRblas_VERSION=${LIBRblas_VERSION}

DESTDIRNAME=	DESTDIR
FAKE_FLAGS=	PREFIX=${PREFIX} \
		LIBRlapack_VERSION=${LIBRlapack_VERSION} \
		LIBRblas_VERSION=${LIBRblas_VERSION}

SEPARATE_BUILD=	Yes

post-build:
	@cp ${WRKSRC}/NEWS.pdf ${WRKBUILD}

post-install:
	@perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>

