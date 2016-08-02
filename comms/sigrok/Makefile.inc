# $OpenBSD: Makefile.inc,v 1.6 2013/03/11 12:27:54 sthen Exp $

CATEGORIES +=		comms/sigrok

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>
HOMEPAGE ?=		http://sigrok.org/
MASTER_SITES ?=		http://sigrok.org/download/source/${SIGROK_PROJECT}/
DISTNAME ?=		${SIGROK_PROJECT}-${SIGROK_VERSION}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE ?=	gnu
