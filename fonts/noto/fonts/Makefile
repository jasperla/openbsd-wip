# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

RUN_DEPENDS =		fonts/noto/cjk \
			fonts/noto/emoji

GH_TAGNAME =		v$V-license-adobe

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
