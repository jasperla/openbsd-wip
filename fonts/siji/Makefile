# $OpenBSD$

COMMENT =	iconic bitmap font based on Stlarch with additional glyphs
DISTNAME =	${GH_PROJECT}-0.0.0.20171022
CATEGORIES =	fonts

# No releases... use GH_COMMIT
GH_ACCOUNT =	stark
GH_PROJECT =	siji
GH_COMMIT =	9d88311bb127b21672b2d4b43eed1ab0e494f143

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE = Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/siji

do-build:
	${GZIP_CMD} ${WRKSRC}/pcf/siji.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/pcf/siji.pcf.gz ${FONTDIR}

.include <bsd.port.mk>
