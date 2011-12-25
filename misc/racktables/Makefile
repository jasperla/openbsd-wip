# $OpenBSD$

COMMENT =		solution for datacenter and server room asset management

DISTNAME =		RackTables-0.19.10
PKGNAME =		${DISTNAME:L}

CATEGORIES =	misc www

HOMEPAGE =		http://racktables.org/

#MAINTAINER =		???

# GPLv2/BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=racktables/}

RUN_DEPENDS =		databases/mysql,-server \
					lang/php/5.3,-snmp \
					lang/php/5.3,-gd \
					lang/php/5.3,-ldap \
					lang/php/5.3,-mysql

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*

PREFIX =                /var/www
INSTDIR =               ${PREFIX}/htdocs/racktables

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	#touch ${WRKDIST}/inc/secret-null.php
	@cp -r ${WRKDIST}/* ${INSTDIR}

.include <bsd.port.mk>
