# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Go dependency management tool
DISTNAME =	dep-0.4.1

CATEGORIES =	sysutils

HOMEPAGE =	https://golang.github.io/dep/

# MIT
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c pthread

MASTER_SITES =  https://deftly.net/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	github.com/golang/dep

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./cmd/dep/

.include <bsd.port.mk>
