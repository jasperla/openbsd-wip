# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		data files for colobot

DISTNAME =		colobot-data-$V

CATEGORIES =		games

GH_PROJECT =		colobot-data

MODULES =		devel/cmake \
			lang/python
MODPY_SETUPUTILS =	No
MODPY_RUNDEP =		No

CONFIGURE_ARGS +=	-DMUSIC:=OFF
CONFIGURE_STYLE =	cmake

.include <bsd.port.mk>
