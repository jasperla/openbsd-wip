# $OpenBSD: Makefile,v 1.35 2016/03/19 22:48:27 naddy Exp $

COMMENT =	logic circuit simulator for KDE

DISTNAME =	klogic-4.0.2

CATEGORIES =	cad education x11 x11/kde

HOMEPAGE =	http://www.a-rostin.de

MASTER_SITES =	${HOMEPAGE}/klogic/releases/
EXTRACT_SUFX =	.tar.gz

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml c kdeui kio m pthread

# GPLv
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/kde4 \
		devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

BUILD_DEPENDS =	devel/gettext-tools

.include <bsd.port.mk>
