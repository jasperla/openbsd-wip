# $OpenBSD$

COMMENT =		general purpose library

DISTNAME =		libowfat-0.29

CATEGORIES =		devel

HOMEPAGE =		http://www.fefe.de/libowfat/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2; linking exception for opentracker
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://dl.fefe.de/
EXTRACT_SUFX =		.tar.bz2

MAKE_FILE =		GNUmakefile

USE_GMAKE =		Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libowfat
.	for _f in CHANGES COPYING README TODO
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/libowfat
.	endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libowfat
	cd ${WRKSRC}/examples && ${INSTALL_DATA} * \
		${PREFIX}/share/examples/libowfat

.include <bsd.port.mk>
