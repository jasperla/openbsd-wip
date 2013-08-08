# $OpenBSD$

COMMENT =	serif typeface family from SIL

V =		4.114
DISTNAME =	CharisSIL-${V}-web
PKGNAME =	charis-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://scripts.sil.org/CharisSIL

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# SIL Open Font License (OFL)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.tuxfamily.org/jod/fonts/charis-fonts/ \
		ftp://download.tuxfamily.org/jod/fonts/charis-fonts/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/charis-fonts
DOCDIR =	${PREFIX}/share/doc/charis-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} \
		${DOCDIR}/documentation ${DOCDIR}/web
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/* ${DOCDIR}/documentation
	${INSTALL_DATA} ${WRKSRC}/web/* ${DOCDIR}/web

.include <bsd.port.mk>
