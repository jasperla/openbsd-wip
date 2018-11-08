# $OpenBSD$

COMMENT =	iconic bitmap font based on Stlarch with additional glyphs
DISTNAME =	unifont-11.0.02
CATEGORIES =	fonts

HOMEPAGE =	http://unifoundry.com/unifont/index.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/Unifont

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/Unifont.ttf ${FONTDIR}

.include <bsd.port.mk>
