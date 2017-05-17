# $OpenBSD: Makefile,v 1.14 2017/05/09 17:19:30 jasper Exp $

COMMENT=	PKI/TLS swiss army knife

GH_ACCOUNT=	cloudflare
GH_PROJECT=	cfssl
GH_COMMIT=	9b4b38c37d230da02d6cc88610130be3df27ad8a

DISTNAME=	cfssl-0.20170511

CATEGORIES=	security

HOMEPAGE=	https://cfssl.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=	lang/go

ALL_TARGET=	github.com/cloudflare/cfssl/cmd/...
WRKSRC=		${MODGO_WORKSPACE}/src/github.com/cloudflare/cfssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cfssl
	cp -R ${WRKSRC}/README.md ${WRKSRC}/doc/* ${PREFIX}/share/doc/cfssl/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/cfssl/*
	chmod =rX ${PREFIX}/share/doc/cfssl/*

.include <bsd.port.mk>
