# $OpenBSD: Makefile,v 1.23 2020/02/04 01:44:05 bcallah Exp $

COMMENT =		free form data organizer

GH_ACCOUNT =		aardappel
GH_PROJECT =		treesheets
GH_COMMIT =		ade283c9b98cbe002494b24cf898f2cd6f09e0f1

DISTNAME =		treesheets-2020.05.05
CATEGORIES =		productivity

HOMEPAGE =		http://treesheets.com

# Zlib
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB += wx_gtk3u_core-3.0

MODULES =		devel/cmake

ALL_TARGET =		treesheets

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		x11/wxWidgets

USE_NINJA =		No

.include <bsd.port.mk>
