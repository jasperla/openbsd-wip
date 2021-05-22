# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	terminal browser for gemini protocol

MODGO_MODNAME=	github.com/makeworld-the-better-one/amfora
MODGO_VERSION=	v1.8.0

DISTNAME=	amfora-${MODGO_VERSION}

CATEGORIES=	net

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

RUN_DEPENDS=	devel/desktop-file-utils

ALL_TARGET=	github.com/makeworld-the-better-one/amfora

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/amfora.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/logo.png ${PREFIX}/share/pixmaps/amfora.png

.include "./modules.inc"

.include <bsd.port.mk>
