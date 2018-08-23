# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

GH_ACCOUNT =	fcambus
GH_PROJECT =	spleen
GH_COMMIT =	2b4eba55c1f659fd67ca2241c9416367f8e162a3

DISTNAME =	spleen-20180823

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
