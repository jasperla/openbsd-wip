# $OpenBSD$

COMMENT =	sans-serif typeface family from SIL

V =		1.004
DISTNAME =	Andika-${V}-web
PKGNAME =	andika-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://scripts.sil.org/andika

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# SIL Open Font License (OFL)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.tuxfamily.org/jod/fonts/andika-fonts/ \
		ftp://download.tuxfamily.org/jod/fonts/andika-fonts/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/andika-fonts
DOCDIR =	${PREFIX}/share/doc/andika-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} \
		${DOCDIR}/documentation ${DOCDIR}/web
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/* ${DOCDIR}/documentation
	${INSTALL_DATA} ${WRKSRC}/web/* ${DOCDIR}/web

.include <bsd.port.mk>
