# $OpenBSD: Makefile,v 1.20 2021/08/14 07:01:23 tb Exp $

COMMENT =	native Go rsync implementation

MODGO_MODNAME =	github.com/gokrazy/rsync
MODGO_VERSION =	v0.0.0-20220305162033-9901bd014e86

DISTNAME =	rsync-${MODGO_VERSION}
PKGNAME =	gokr-rsync-20220305

CATEGORIES =	net

HOMEPAGE =	https://github.com/gokrazy/rsync

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

WRKDIST =	${WRKSRC}

.include "modules.inc"

.include <bsd.port.mk>
