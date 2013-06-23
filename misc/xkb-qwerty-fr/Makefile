# $OpenBSD:  $

COMMENT = qwerty layout for french people

DISTNAME = xkb-qwerty-fr_linux
PKGNAME = xkb-qwerty-fr
CATEGORIES = misc

HOMEPAGE = http://marin.jb.free.fr/qwerty-fr
MAINTAINER = Tristan Le Guern <leguern@medu.se>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/sources/
EXTRACT_SUFX =		.tgz

NO_BUILD =		Yes

WRKDIST = ${WRKDIR}/${PKGNAME}
INTERNAL = ${WRKDIR}/xkb-qwerty-fr/xkb-qwerty-fr_0.5_all/usr/share

do-install:
	${INSTALL_DATA} ${INTERNAL}/X11/xkb/symbols/us_qwerty-fr /usr/X11R6/share/X11/xkb/symbols/us_fr
	${INSTALL_MAN} ${INTERNAL}/man/man7/qwerty-fr.7.gz ${PREFIX}/man/man7

.include <bsd.port.mk>
