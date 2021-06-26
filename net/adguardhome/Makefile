# $OpenBSD: Makefile,v 1.8 2020/09/23 23:16:46 abieber Exp $

COMMENT =	network-wide ad and tracker blocking DNS server

V =		0.105.0
DISTNAME =	AdGuardHome-${V}

CATEGORIES =	net
HOMEPAGE =	https://adguard.com/en/adguard-home/overview.html

# ftp https://github.com/AdguardTeam/AdGuardHome/archive/v0.104.1.tar.gz
# go get github.com/gobuffalo/packr/packr
# uncompress; cd to AdGuardHome dir
# gmake build
# rm -rf client/node_modules
# rm AdGuardHome
# go mod vendor
# compress
MASTER_SITES =	https://deftly.net/dist/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go

NO_TEST =	Yes

MODGO_LDFLAGS =	-X main.version=v${V}

# Need to use -mod vendor, which requires GO111MODULE=on. This can be removed
# in Go 1.16 once our ports tree has been updated to work with modules being
# on by default.
do-build:
	cd ${WRKSRC} && \
		env GO111MODULE=on GOCACHE="${MODGO_GOCACHE}" \
			go build -mod vendor -ldflags="${MODGO_LDFLAGS} "

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/AdGuardHome ${PREFIX}/${MODGO_BINDIR}

.include <bsd.port.mk>
