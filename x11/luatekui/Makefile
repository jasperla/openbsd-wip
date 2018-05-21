# $OpenBSD: Makefile,v 1.2 2018/04/14 22:53:54 sthen Exp $

COMMENT =	small, freestanding and portable UI toolkit for lua

V =		1.12-r1
DISTNAME =	tekui-${V}

CATEGORIES =	x11

HOMEPAGE =	http://tekui.neoscientists.org/index.html

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

WANTLIB += c pthread

EXTRACT_SUFX =	.tgz

MASTER_SITES =	http://tekui.neoscientists.org/releases/

MODULES =	lang/lua

.include <bsd.port.mk>
