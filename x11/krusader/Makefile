# $OpenBSD: Makefile,v 1.26 2016/03/19 22:48:28 naddy Exp $

COMMENT=	twin panel file manager for KDE

VERSION=	2.5.0
DISTNAME=	krusader-${VERSION}

CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://www.krusader.org

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krusader/${VERSION}/} \
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/kf5 \
		devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

BUILD_DEPENDS =	devel/gettext-tools

NO_TEST = 	Yes

.include <bsd.port.mk>
