# $OpenBSD: $

CATEGORIES +=	comms/tilp

# child ports (except tilp) MUST define TILP_{PROJECT,VERSION}

EXTRACT_SUFX ?=		.tar.bz2

DISTNAME ?=		${TILP_PROJECT}${TILP_VERSION}

MAINTAINER ?=		Anthony J. Bentley <anthony@cathet.us>
HOMEPAGE ?=		http://lpg.ticalc.org/prj_tilp/
MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=tilp/}

CONFIGURE_STYLE ?=	gnu

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
