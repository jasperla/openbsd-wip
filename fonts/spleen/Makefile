# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

GH_ACCOUNT =	fcambus
GH_PROJECT =	spleen
GH_COMMIT =	0b83e352351ddb4ceee608da69ce38000ae8f01b

DISTNAME =	spleen-20180917

CATEGORIES =	fonts

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR=	${PREFIX}/share/fonts/spleen

do-build:
	cd ${WRKSRC}; \
	for file in *.bdf; do \
		font=`basename $$file .bdf`; \
		${X11BASE}/bin/bdftopcf -t -o $$font.pcf $$font.bdf; \
	done
	${GZIP_CMD} ${WRKSRC}/*.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias-spleen ${FONTDIR}

.include <bsd.port.mk>
