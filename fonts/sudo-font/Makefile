# $OpenBSD$

COMMENT =	free font for coders
CATEGORIES =	fonts

GH_ACCOUNT =	jenskutilek
GH_PROJECT =	sudo-font
GH_TAGNAME =	v0.40

HOMEPAGE =	https://www.kutilek.de/sudo-font/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/sudo-font
DOCDIR =		${PREFIX}/share/doc/sudo-font

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/sudo/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/sudo/Webfonts/*.{woff,woff2} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/sudo/{OFL.txt,OFL-FAQ.txt} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/README.md ${DOCDIR}

.include <bsd.port.mk>
