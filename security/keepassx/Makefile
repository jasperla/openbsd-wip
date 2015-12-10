# $OpenBSD: Makefile,v 1.8 2015/12/07 18:26:01 jasper Exp $

COMMENT =	management tool for sensitive data

V =		2.0
DISTNAME =	keepassx-$V
CATEGORIES =	security

HOMEPAGE =	https://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.keepassx.org/releases/$V/

MODULES =	x11/qt4 \
		devel/cmake \
		gcc4

MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

WANTLIB += QtGui QtXml X11 Xtst c m pthread stdc++
WANTLIB += gcrypt z

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info

.include <bsd.port.mk>
