# $OpenBSD$
COMMENT=		"wireless LAN Access Point Controller"

DISTNAME=		chillispot-1.0
CATEGORIES=		net

HOMEPAGE=		http://www.chillispot.org/

MAINTAINER=		OpenBSD ports <ports@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  	No 
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=           ${HOMEPAGE}download/ \
			http://www.geeklan.co.uk/files/

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${WRKDIST}/doc/chilli.conf ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${WRKDIST}/doc/dictionary.chillispot ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${WRKDIST}/doc/freeradius.users ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${WRKDIST}/doc/hotspotlogin.cgi ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${FILESDIR}/chillispot-pf.conf ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${FILESDIR}/chilli.ipup ${PREFIX}/share/doc/chillispot
	${INSTALL_DATA} ${FILESDIR}/openbsd_chillispot_installguide.txt ${PREFIX}/share/doc/chillispot

.include <bsd.port.mk>
