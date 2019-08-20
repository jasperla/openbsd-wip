# $OpenBSD: Makefile,v 1.7 2019/01/23 00:54:07 abieber Exp $

COMMENT =	experiment in scalable routing	

V =		0.3.7
DISTNAME =	yggdrasil-${V}-vendor
PKGNAME =	yggdrasil-go-${V}

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET =	github.com/yggdrasil-network/yggdrasil-go

SUBST_VARS =	VARBASE

do-extract:
	mkdir -p ${WRKDIST} && \
		tar -C ${WRKDIST} -zxf ${FULLDISTDIR}/${DISTNAME}.tar.gz

do-build:
	cd ${WRKSRC} && \
		${MODGO_CMD} build ${MODGO_FLAGS} \
			-o ${MODGO_WORKSPACE}/bin/yggdrasil \
			./cmd/yggdrasil && \
		${MODGO_CMD} build ${MODGO_FLAGS} \
			-o ${MODGO_WORKSPACE}/bin/yggdrasilctl \
			./cmd/yggdrasilctl

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/yggdrasil \
		${PREFIX}/bin/yggdrasil
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/yggdrasilctl \
		${PREFIX}/bin/yggdrasilctl

.include <bsd.port.mk>
