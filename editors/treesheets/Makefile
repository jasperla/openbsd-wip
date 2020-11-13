# $OpenBSD: Makefile,v 1.21 2020/08/18 19:15:54 edd Exp $

COMMENT =	continuation and extension of Vim

GH_ACCOUNT =	aardappel
GH_PROJECT =	treesheets
GH_COMMIT =	524ec28e58d1ab2c16e9ba943ec315dec23767c6

DISTNAME =	treesheets-2020.09.27

CATEGORIES =	editors
HOMEPAGE =	http://strlen.com/treesheets/

# ZLIB
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB += wx_gtk3u_core-3.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		x11/wxWidgets

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

.include <bsd.port.mk>
