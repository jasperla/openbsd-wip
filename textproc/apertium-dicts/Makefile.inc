# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT ?=		${LANG} language pack for apertium

DISTNAME ?=		apertium-$L-$V

CATEGORIES ?=		textproc

HOMEPAGE ?=		https://www.apertium.org/

# GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS +=	textproc/apertium \
			textproc/libxslt \
			textproc/lttoolbox
RUN_DEPENDS +=		textproc/apertium

CONFIGURE_STYLE =	gnu
