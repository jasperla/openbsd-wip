# $OpenBSD$

CATEGORIES ?=		security
DPB_PROPERTIES ?=	parallel

HOMEPAGE ?=		http://www.openvas.org/

MAINTAINER ?=		Nigel Taylor <nigel@openbsd.org>

MASTER_SITES_OPENVAS =	http://wald.intevation.org/frs/download.php/

# GPLv2+
PERMIT_PACKAGE_CDROM ?=	    Yes
PERMIT_PACKAGE_FTP ?=	    Yes
PERMIT_DISTFILES_FTP ?=	    Yes
DIST_SUBDIR =		openvas

MODULES ?=		devel/cmake \
			devel/gettext

CONFIGURE_ARGS ?=	-D SYSCONFDIR=${SYSCONFDIR} -D LOCALSTATEDIR=${LOCALSTATEDIR}

