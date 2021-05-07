# $OpenBSD$

COMMENT =	implementation of the Ethereum protocol

MODGO_MODNAME =	github.com/ethereum/go-ethereum
MODGO_VERSION =	v1.10.2

DISTNAME =	go-ethereum-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://geth.ethereum.org/

# LGPLv3
PERMIT_PACKAGE =	yes

MODULES =		lang/go

SUBST_VARS =		VARBASE

post-install:
	mkdir -p ${PREFIX}/share/go-ethereum
	cp ${FILESDIR}/geth.conf ${PREFIX}/share/go-ethereum/geth.conf
	${SUBST_CMD} ${PREFIX}/share/go-ethereum/geth.conf
	mv ${PREFIX}/bin/faucet ${PREFIX}/bin/geth-faucet

# helper to regenerate the config file
regen-conf:
	${MODGO_WORKSPACE}/bin/geth dumpconfig > ${FILESDIR}/geth.conf
	sed -i -e '/^DataDir\ /  s/=.*/=\ "$${VARBASE}\/geth\/data"/' \
		-e '/^DatasetDir\ /s/=.*/=\ \"$${VARBASE}\/geth\/ethash"/' \
		${FILESDIR}/geth.conf

.include "./modules.inc"

.include <bsd.port.mk>
