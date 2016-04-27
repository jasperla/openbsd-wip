# $OpenBSD: Makefile,v 1.26 2016/03/19 22:48:28 naddy Exp $

COMMENT=	twin panel file manager for KDE

DISTNAME=	krusader-2.4.0-beta3

CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://www.krusader.org

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml c ${KDE4LIB}/kdeui
WANTLIB += kfile ${KDE4LIB}/kio kparts m nepomuk nepomukutils
WANTLIB += konq pthread solid soprano z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krusader/}
EXTRACT_SUFX= .tar.bz2

MODULES=	x11/kde4 \
		devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

NO_TEST = 	Yes

# XXX Silently ignore non-existent dependencies
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0046=OLD
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0054=OLD
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0064=OLD
# XXX Don't treat ``DEFINITIONS`` as a built-in directory property
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0059=OLD

.include <bsd.port.mk>
