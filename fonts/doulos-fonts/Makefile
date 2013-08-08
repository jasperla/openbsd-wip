# $OpenBSD$

COMMENT =	serif typeface family from SIL

V =		4.112
DISTNAME =	DoulosSIL-${V}-web
PKGNAME =	doulos-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://scripts.sil.org/DoulosSIL

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# SIL Open Font License (OFL)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.tuxfamily.org/jod/fonts/doulos-fonts/ \
		ftp://download.tuxfamily.org/jod/fonts/doulos-fonts/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/doulos-fonts
DOCDIR =	${PREFIX}/share/doc/doulos-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} \
		${DOCDIR}/documentation ${DOCDIR}/web
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/* ${DOCDIR}/documentation
	${INSTALL_DATA} ${WRKSRC}/web/* ${DOCDIR}/web

.include <bsd.port.mk>
