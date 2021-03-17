# $OpenBSD$

COMMENT =	automatic, rotating wallpapers from Reddit
CATEGORIES =	x11

GH_ACCOUNT =	NuLL3rr0r
GH_PROJECT =	reddit-wallpaper
GH_TAGNAME =	v0.1.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	graphics/feh \
		net/curl \
		shells/bash \
		textproc/jq

PKG_ARCH =	*

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/reddit-wallpaper.sh \
		${PREFIX}/bin/reddit-wallpaper
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/reddit-wallpaper
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/reddit-wallpaper

.include <bsd.port.mk>
