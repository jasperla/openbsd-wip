COMMENT =	find and watch Youtube videos from the terminal

GH_ACCOUNT =	pystardust
GH_PROJECT =	ytfzf
GH_TAGNAME =	v2.6.0

CATEGORIES =	multimedia

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/jq net/curl sysutils/fzf \
		multimedia/mpv www/yt-dlp

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	# Patch script for addons directory
	${SUBST_CMD} ${WRKSRC}/ytfzf

	${INSTALL_SCRIPT} ${WRKSRC}/ytfzf ${PREFIX}/bin

	${INSTALL_MAN} ${WRKSRC}/docs/man/ytfzf.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/man/ytfzf.5 ${PREFIX}/man/man5

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytfzf/
	${INSTALL_DATA} ${WRKSRC}/docs/conf.sh ${PREFIX}/share/examples/ytfzf/

	${INSTALL_DATA_DIR} ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/interfaces ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/scrapers ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/sort-names ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/thumbnail-viewers ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/url-handlers ${PREFIX}/share/ytfzf/addons
	cp -r ${WRKSRC}/addons/extensions ${PREFIX}/share/ytfzf/addons

.include <bsd.port.mk>
