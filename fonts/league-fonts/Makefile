# $OpenBSD: Makefile,v 1.3 2013/03/11 11:06:05 espie Exp $

COMMENT =		fonts from the League of Moveable Type

V =			0.2
PKGNAME =		league-fonts-${V}
PKG_ARCH =		*
EXTRACT_SUFX =		.zip
FONT_LIST =		theleagueof-blackout-49991ac \
			theleagueof-chunk-cd2d223 \
			theleagueof-fanwood-cbaaed9 \
			theleagueof-goudy-bookletter-1911-85ff5b8 \
			theleagueof-junction-18de841 \
			theleagueof-knewave-f335d5f \
			theleagueof-league-gothic-64c3ede \
			theleagueof-league-script-number-one-225add0 \
			theleagueof-linden-hill-a3f7ae6 \
			theleagueof-orbitron-13e6a52 \
			theleagueof-prociono-f9d9680 \
			theleagueof-raleway-40afd9d \
			theleagueof-sniglet-5c6b086 \
			theleagueof-sorts-mill-goudy-0607289 \
			ostrich-sans-master
# Our make has a bug in the for loops, so it's not possible to use a for loop
# to trim the hash of the name. Create another list is the easiest workaround.
# "ostrid-sans" uses a different pattern for the filename,
# we'll work with it manually outside of the list.
FONT_LIST_TRIMMED =	theleagueof-blackout \
			theleagueof-chunk \
			theleagueof-fanwood \
			theleagueof-goudy-bookletter-1911 \
			theleagueof-junction \
			theleagueof-knewave \
			theleagueof-league-gothic \
			theleagueof-league-script-number-one \
			theleagueof-linden-hill \
			theleagueof-orbitron \
			theleagueof-prociono \
			theleagueof-raleway \
			theleagueof-sniglet \
			theleagueof-sorts-mill-goudy
.for font in ${FONT_LIST}
DISTFILES +=		${font}${EXTRACT_SUFX}
.endfor

CATEGORIES =		fonts x11

HOMEPAGE =		http://www.theleagueofmoveabletype.com/
MASTER_SITES =		https://theleagueof.s3.amazonaws.com/downloads/ \
			http://download.tuxfamily.org/jod/fonts/league-fonts/${V}/ \
			ftp://download.tuxfamily.org/jod/fonts/league-fonts/${V}/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Custom "SIL OPEN FONT LICENSE Version 1.1":
# "Permission is hereby granted, free of charge, to any person obtaining
# a copy of the Font Software, to use, study, copy, merge, embed, modify,
# redistribute, and sell modified and unmodified copies of the Font Software..."
# Allows redistribution of unmodified fonts even if bundled for sale with other software.
PERMIT_PACKAGE_CDROM =	Yes

DIST_SUBDIR =		leaguefonts

NO_BUILD =		Yes
NO_TEST =		Yes

FONTS_DIR =		${PREFIX}/lib/X11/fonts/league-fonts/
DOCS_DIR =		${PREFIX}/share/doc/league-fonts/
WEBFONTS_DIR =		${PREFIX}/share/league-fonts/

post-extract:
	rm -rf ${WRKDIR}/*/__MACOSX
	rm -rf ${WRKDIR}/*/source

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR}
	${INSTALL_DATA} ${WRKDIR}/*/*.??f ${FONTS_DIR}
.for font in ${FONT_LIST_TRIMMED}
	${INSTALL_DATA_DIR} ${DOCS_DIR}/${font}/images
	${INSTALL_DATA} ${WRKDIR}/${font}-*/*.markdown ${DOCS_DIR}/${font}
	${INSTALL_DATA} ${WRKDIR}/${font}-*/images/* ${DOCS_DIR}/${font}/images
	${INSTALL_DATA_DIR} ${WEBFONTS_DIR}/${font}
	${INSTALL_DATA} ${WRKDIR}/${font}-*/webfonts/* ${WEBFONTS_DIR}/${font}
.endfor
	${INSTALL_DATA_DIR} ${DOCS_DIR}/ostrich-sans/images
	${INSTALL_DATA} ${WRKDIR}/ostrich-sans/*.markdown ${DOCS_DIR}/ostrich-sans
	${INSTALL_DATA} ${WRKDIR}/ostrich-sans/images/* ${DOCS_DIR}/ostrich-sans/images
	${INSTALL_DATA_DIR} ${WEBFONTS_DIR}/ostrich-sans
	${INSTALL_DATA} ${WRKDIR}/ostrich-sans/webfonts/* ${WEBFONTS_DIR}/ostrich-sans

.include <bsd.port.mk>
