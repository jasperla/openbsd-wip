# $OpenBSD: Makefile.inc,v 1.6 2013/03/11 12:27:54 sthen Exp $

CATEGORIES +=		comms/sigrok

MAINTAINER ?=		Anthony J. Bentley <anthony@cathet.us>
HOMEPAGE ?=		http://sigrok.org/
MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=sigrok/}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE ?=	gnu
