# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $


V ?=			0.1.5

CATEGORIES ?=		games

HOMEPAGE ?=		http://colobot.info/

# GPLv3+
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		colobot
GH_TAGNAME ?=		colobot-gold-$V-alpha

MODULES +=		devel/cmake

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_DATA_DIR="${PREFIX}/share/colobot"

NO_TEST ?=		Yes
