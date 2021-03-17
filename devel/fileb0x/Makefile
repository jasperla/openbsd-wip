# $OpenBSD: Makefile,v 1.8 2019/05/04 20:13:37 bket Exp $

COMMENT =	customizable tool to embed files in go

DISTNAME =	fileb0x-1.1.3

CATEGORIES =	devel

HOMEPAGE =	https://github.com/UnnoTed/fileb0x

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET =	github.com/UnnoTed/fileb0x

.include <bsd.port.mk>
