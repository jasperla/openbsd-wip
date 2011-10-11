# $OpenBSD: Makefile.inc,v 1.12 2010/07/10 16:57:22 espie Exp $

VERSION ?=		${MODKDE4_VERSION}

CATEGORIES ?=		x11
CATEGORIES +=		x11/kde4
MODULES +=		x11/kde4

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/${VERSION}/src/}
DIST_SUBDIR =		kde

# KDE SC is mostly GPL, or LGPL/BSDL for the central libraries
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes

# XXX temporary until all ports get updated to kde4.port.mk
MODKDE4_USE =
