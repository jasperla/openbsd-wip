# $OpenBSD:  $

COMMENT =	qwerty keyboard layout for french users

V =		0.5
DISTNAME =	xkb-qwerty-fr_linux
PKGNAME =	xkb-qwerty-fr-$V
CATEGORIES =	x11

HOMEPAGE =	http://marin.jb.free.fr/qwerty-fr
MAINTAINER =	Tristan Le Guern <leguern@medu.se>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/sources/
EXTRACT_SUFX =	.tgz

NO_BUILD =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}
INTERNAL =	${WRKDIR}/xkb-qwerty-fr/xkb-qwerty-fr_$V_all/usr/share

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/X11/xkb/symbols
	${INSTALL_DATA} ${INTERNAL}/X11/xkb/symbols/us_qwerty-fr ${PREFIX}/share/X11/xkb/symbols/us_fr
	${INSTALL_MAN} ${INTERNAL}/man/man7/qwerty-fr.7.gz ${PREFIX}/man/man7
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGNAME}
	${INSTALL_DATA} ${INTERNAL}/doc/xkb-qwerty-fr/copyright ${PREFIX}/share/doc/${PKGNAME}
	${INSTALL_DATA} ${INTERNAL}/doc/xkb-qwerty-fr/keymap.txt ${PREFIX}/share/doc/${PKGNAME}

.include <bsd.port.mk>
