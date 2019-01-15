# $OpenBSD$

COMMENT =	go implementation of the ethereum protocol
V =		1.8.21
GH_ACCOUNT =	ethereum
GH_PROJECT =	go-ethereum
GH_TAGNAME =	v$V

CATEGORIES =	net
HOMEPAGE =	https://geth.ethereum.org/
MAINTAINER =	Fabian Raetz <fabian.raetz@gmail.com>

WANTLIB += 	c pthread

# LGPL-3.0
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/go
MODGO_TYPE =	bin
SUBST_VARS =	VARBASE

do-build:
	cd ${WRKSRC} && make all

do-install:
	mkdir -p ${PREFIX}/share/go-ethereum
	cp ${FILESDIR}/geth.conf ${PREFIX}/share/go-ethereum/geth.conf
	${SUBST_CMD} ${PREFIX}/share/go-ethereum/geth.conf
	for b in abigen bootnode evm geth puppeth rlpdump swarm wnode ; do \
		${INSTALL_PROGRAM} ${WRKSRC}/build/bin/$$b ${PREFIX}/bin/; \
	done

# helper to regenerate the config file
regen-conf:
	${WRKSRC}/build/bin/geth dumpconfig > ${FILESDIR}/geth.conf
	sed -i -e '/^DataDir\ /  s/=.*/=\ "$${VARBASE}\/geth\/data"/' \
		-e '/^DatasetDir\ /s/=.*/=\ \"$${VARBASE}\/geth\/ethash"/' \
		${FILESDIR}/geth.conf

.include <bsd.port.mk>
