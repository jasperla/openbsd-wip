# $OpenBSD$

COMMENT =		implementation of the FITS WCS standard
DISTNAME =		wcslib-4.17

SHARED_LIBS =		wcs		0.0

CATEGORIES =		astro devel

HOMEPAGE =		http://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c cfitsio g2c m

MASTER_SITES =		ftp://ftp.atnf.csiro.au/pub/software/wcslib/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/libf2c \
			math/cfitsio

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/wcslib
CONFIGURE_ENV =		LIBwcs_VERSION=${LIBwcs_VERSION}

AUTOCONF_VERSION =	2.61
MAKE_FILE =		GNUmakefile
SUBST_VARS =		DISTNAME

# items in distfile are 0444
post-extract:
	chmod u+w ${WRKSRC}/*

.include <bsd.port.mk>
