# $OpenBSD: Makefile,v 1.2 2017/05/06 11:14:50 fcambus Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

GH_ACCOUNT =	fcambus
GH_PROJECT =	spleen
GH_COMMIT =	4c7ca838ad6d744f1d7047085a6470d9bd370673

DISTNAME =	spleen-20180815

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
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	rm -f ${WRKSRC}/fonts.alias
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-spleen

.include <bsd.port.mk>
