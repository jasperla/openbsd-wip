# $OpenBSD$

CATEGORIES ?=		security

HOMEPAGE ?=		http://www.openvas.org/

MAINTAINER ?=		Nigel Taylor <njtaylor@openbsd.org>

MASTER_SITES_OPENVAS =	http://wald.intevation.org/frs/download.php/

# GPLv2+
PERMIT_PACKAGE_CDROM ?=	    Yes
PERMIT_PACKAGE_FTP ?=	    Yes
PERMIT_DISTFILES_CDROM ?=   Yes
PERMIT_DISTFILES_FTP ?=	    Yes

MODULES ?=		devel/cmake \
			devel/gettext

USE_CMAKE ?=		Yes

CONFIGURE_ARGS ?=	-D SYSCONFDIR=/etc -D LOCALSTATEDIR=/var
