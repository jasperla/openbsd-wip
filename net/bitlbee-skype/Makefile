# $OpenBSD$

COMMENT =		Skype plugin for Bitlbee

V = 0.9.0
DISTNAME =		bitlbee-skype-${V}

CATEGORIES =		net

HOMEPAGE =		http://vmiklos.github.com/bitlbee-skype/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPL v2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		https://github.com/downloads/vmiklos/bitlbee-skype/

WANTLIB =		c 

USE_GMAKE =          Yes
USE_LIBTOOL = 		Yes
NO_REGRESS =		Yes

CONFIGURE_STYLE=        gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitlbee-skype
	${INSTALL_DATA} ${WRKDIST}/Changelog ${PREFIX}/share/doc/bitlbee-skype/
	${INSTALL_DATA} ${WRKDIST}/HACKING ${PREFIX}/share/doc/bitlbee-skype/
	${INSTALL_DATA} ${WRKDIST}/NEWS ${PREFIX}/share/doc/bitlbee-skype/
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/bitlbee-skype/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitlbee-skype
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitlbee-skype/skyped
	${INSTALL_DATA} ${WRKDIST}/skyped.conf.dist ${PREFIX}/share/doc/bitlbee-skype/skyped
	${INSTALL_DATA} ${WRKDIST}/skyped.cnf ${PREFIX}/share/doc/bitlbee-skype/skyped

.include <bsd.port.mk>
