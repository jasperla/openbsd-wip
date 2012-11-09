# $OpenBSD: Makefile,v 1.5 2010/08/31 08:22:05 jasper Exp $

COMMENT =	K Desktop Environment, image effects
DISTNAME =	qimageblitz-${QIMAGEBLITZ_VERSION}
REVISION =	0

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	qimageblitz         0.0      # .4.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/qimageblitz/}

WANTLIB =  c lib/qt4/QtGui m pthread stdc++

MODKDE4_USE =

.include <bsd.port.mk>
