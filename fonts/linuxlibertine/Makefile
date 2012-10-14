# $OpenBSD$

PKG_ARCH =	*

COMMENT =		Free font with advanced OTF features
DISTNAME =		linuxlibertine-5.1.3
CATEGORIES =		fonts

HOMEPAGE =		http://www.linuxlibertine.org/

#MAINTAINER =		???

# GPLv2 / SIL Open Font License (OFL) 1.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=linuxlibertine/}

DISTFILES =		LinLibertineOTF_5.1.3_2011_06_21.tgz

WRKDIST = ${WRKDIR}

NO_BUILD =		Yes
NO_REGRESS =		Yes

INST_DIR =	${PREFIX}/lib/X11/fonts/linuxlibertine

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.otf ${INST_DIR}

.include <bsd.port.mk>
