# $OpenBSD$

COMMENT =		fonts collection from Google
DISTNAME =		noto-fonts-20150929
CATEGORIES =		fonts
HOMEPAGE =		https://www.google.com/get/noto/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# Apache 2.0, OFL 1.1 for NotoSansCJK.ttc
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES0 =		https://github.com/googlei18n/noto-fonts/archive/
MASTER_SITES1 =		https://github.com/googlei18n/noto-cjk/raw/v1.004/
MASTER_SITES2 =		https://github.com/googlei18n/noto-emoji/archive/
DISTFILES =	noto-fonts-20150929{v2015-09-29-license-adobe}${EXTRACT_SUFX}:0
DISTFILES +=	NotoSansCJK.ttc.zip:1
DISTFILES +=	noto-emoji-20150929{v2015-09-29-license-apache}${EXTRACT_SUFX}:2

NO_BUILD =		Yes
NO_TEST =		Yes

WRKSRC =	${WRKDIR}
BASEFONTS =	${WRKSRC}/noto-fonts-2015-09-29-license-adobe/hinted
EMOJIFONTS =	${WRKSRC}/noto-emoji-2015-09-29-license-apache

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/noto
	${INSTALL_DATA} ${BASEFONTS}/*.ttf ${WRKSRC}/NotoSansCJK.ttc \
		${EMOJIFONTS}/NotoEmoji-Regular.ttf ${PREFIX}/share/fonts/noto/
	${X11BASE}/bin/mkfontscale ${PREFIX}/share/fonts/noto
	${X11BASE}/bin/mkfontdir ${PREFIX}/share/fonts/noto

.include <bsd.port.mk>
