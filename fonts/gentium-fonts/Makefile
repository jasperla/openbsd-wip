# $OpenBSD$

COMMENT =	serif typeface family from SIL

V =		1.510
DISTNAME =	GentiumPlus-${V}-web
PKGNAME =	gentium-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://scripts.sil.org/Gentium

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# SIL Open Font License (OFL)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.tuxfamily.org/jod/fonts/gentium-fonts/ \
		ftp://download.tuxfamily.org/jod/fonts/gentium-fonts/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/gentium-fonts
DOCDIR =	${PREFIX}/share/doc/gentium-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} \
		${DOCDIR}/documentation ${DOCDIR}/web
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/* ${DOCDIR}/documentation
	${INSTALL_DATA} ${WRKSRC}/web/* ${DOCDIR}/web

.include <bsd.port.mk>
