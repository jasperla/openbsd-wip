# $OpenBSD: Makefile,v 1.37 2013/03/11 11:42:42 espie Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.2
DISTNAME =	mupdf-$V-source
EXTRACT_SUFX =	.zip
PKGNAME =	mupdf-${V:S/-rc/rc/}

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: GPLv3. font maps: Adobe (redist ok, see headers). droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

# XXX statically linked its own jpeg and friends?
#WANTLIB =	X11 Xext c freetype jbig2dec jpeg>=62 m openjpeg z
WANTLIB +=	X11 Xext c freetype m z

MASTER_SITES =	http://mupdf.googlecode.com/files/

RUN_DEPENDS =	devel/desktop-file-utils
#LIB_DEPENDS =	graphics/jbig2dec \
#		graphics/jpeg \
#		graphics/openjpeg>=1.5.0

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

MAKE_ENV +=	CC=${CC} CXX=${CXX} build= verbose=1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/debian/mupdf.pc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
	    ${PREFIX}/share/application-registry/ ${PREFIX}/share/pixmaps \
	    ${PREFIX}/lib/pkgconfig/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.applications \
	    ${PREFIX}/share/application-registry/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.pc \
	    ${PREFIX}/lib/pkgconfig/mupdf.pc

.include <bsd.port.mk>
