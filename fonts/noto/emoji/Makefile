# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

GH_TAGNAME =		v$V-license-apache

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/NotoEmoji-Regular.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
