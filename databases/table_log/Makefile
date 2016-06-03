# $OpenBSD$

COMMENT =		table log add-on for PostgreSQL

#
# What port/package will be created
#
V=0.4.4
DISTNAME =		table_log-${V}

CATEGORIES =		databases

HOMEPAGE =		http://tablelog.projects.postgresql.org/

MAINTAINER =		Todd T. Fries <todd@OpenBSD.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pgfoundry.org/frs/download.php/1387/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
