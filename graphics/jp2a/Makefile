# $OpenBSD$

COMMENT = 		small utility that converts JPG images to ASCII

DISTNAME = 		jp2a-1.0.6

CATEGORIES = 		graphics

HOMEPAGE = 		http://csl.sublevel3.org/jp2a/

MAINTAINER = 		Kirill Bychkov <yason@linklevel.net>

# GPL
PERMIT_PACKAGE_CDROM = 	Yes

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=jp2a/}

WANTLIB = 		c crypto curl idn jpeg ncurses ssl z
LIB_DEPENDS = 		graphics/jpeg \
			devel/libidn \
			net/curl

TEST_DEPENDS = 		shells/bash

CONFIGURE_STYLE = 	gnu

CONFIGURE_ARGS = 	--with-jpeg-lib=${LOCALBASE}/lib/

TEST_TARGET = 		test

post-configure:
	@perl -pi -e 's|/bin/bash|${LOCALBASE}/bin/bash|g' \
		${WRKSRC}/tests/run-tests.sh
	@perl -pi -e 's|--strip-trailing-cr --brief|-b|g' \
		${WRKSRC}/tests/run-tests.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jp2a
	${INSTALL_DATA} ${WRKSRC}/AUTHORS \
		${PREFIX}/share/doc/jp2a/AUTHORS
	${INSTALL_DATA} ${WRKSRC}/COPYING \
		${PREFIX}/share/doc/jp2a/COPYING
	${INSTALL_DATA} ${WRKSRC}/LICENSES \
		${PREFIX}/share/doc/jp2a/LICENSES

.include <bsd.port.mk>
