# $OpenBSD: Makefile,v 1.14 2018/07/19 19:43:11 rsadowski Exp $

COMMENT =	libraries for creating business diagrams

VERSION =	2.6.1
DISTNAME =	kdiagram-${VERSION}

CATEGORIES =	graphics

SHARED_LIBS +=  KChart                    0.0 # 2.6
SHARED_LIBS +=  KGantt                    0.0 # 2.6

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdiagram/${VERSION}/}
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake \
		x11/qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
