# $OpenBSD$

COMMENT =	free unicode font from the GNU project
DISTNAME =	unifont-12.1.03
DISTFILES =	${DISTNAME}.ttf
CATEGORIES =	fonts

HOMEPAGE =	http://unifoundry.com/unifont/index.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
# with font embedding in documents exception
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://unifoundry.com/pub/unifont/unifont-12.1.03/font-builds/

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/unifont

do-extract:
	@mkdir -p ${WRKSRC}
	@cp ${DISTDIR}/${DISTFILES} ${WRKSRC}/unifont.ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/unifont.ttf ${FONTDIR}

.include <bsd.port.mk>
