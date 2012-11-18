# $OpenBSD: Makefile,v 1.2 2010/07/10 16:57:22 espie Exp $

CATEGORIES =	productivity
COMMENT =	collaboration services library for KDE
DISTNAME =	attica-${ATTICA_VERSION}
REVISION =	0

SHARED_LIBS =	attica		1.0
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	${MASTER_SITE_KDE:=stable/attica/}

WANTLIB =	m stdc++ lib/qt4/QtNetwork

# LGPLv2.1+
PERMIT_DISTFILES_CDROM =        Yes
PERMIT_DISTFILES_FTP =          Yes
PERMIT_PACKAGE_CDROM =          Yes
PERMIT_PACKAGE_FTP =            Yes

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
