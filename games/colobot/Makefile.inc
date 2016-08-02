# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $


V ?=			0.1.8

CATEGORIES ?=		games

HOMEPAGE ?=		https://colobot.info/

# GPLv3+
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		colobot
GH_TAGNAME ?=		colobot-gold-$V-alpha

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_DATA_DIR="${PREFIX}/share/colobot"

NO_TEST ?=		Yes
