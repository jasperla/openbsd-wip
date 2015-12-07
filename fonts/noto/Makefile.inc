# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

# N.B. cjk is independently versioned
V ?=			2015-09-29
DISTNAME ?=		noto-${NOTO_PROJECT}-${V:S/-//g}

CATEGORIES ?=		fonts

HOMEPAGE ?=		https://www.google.com/get/noto/

MAINTAINER ?=		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# cjk: SIL OFL 1.1
# fonts, emoji: Apache 2.0 (XXX post-2015-09-29 these are relicensed OFL)
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		googlei18n
GH_PROJECT ?=		noto-${NOTO_PROJECT}
GH_TAGNAME ?=		v$V

NO_BUILD ?=		Yes
NO_TEST ?=		Yes
PKG_ARCH ?=		*

NOTO_INSTALLDIR ?=	${PREFIX}/share/fonts/noto
