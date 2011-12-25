# $OpenBSD$

COMMENT =		generates web, streaming, ftp or mail server statistics

DISTNAME =		awstats-6.95

CATEGORIES =		www

HOMEPAGE =		http://awstats.sourceforge.net/

#MAINTAINER =		???

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=awstats/}

#RUN_DEPENDS =		???

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*
PREFIX = 		/var/www
INSTDIR = 		${PREFIX}/htdocs/awstats
#SUBST_VARS = 		INSTDIR

do-configure:
	@perl -pi -e 's,__INSTDIR__,${INSTDIR},g' ${WRKDIST}/tools/httpd_conf
post-configure:
	@find ${WRKSRC} -name *.orig -exec rm {} \;
do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKDIST}; tar cf - . | tar xf - -C ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
