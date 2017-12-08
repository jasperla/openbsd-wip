# $OpenBSD: Makefile,v 1.28 2017/07/16 19:18:49 espie Exp $

COMMENT=	Qt-based 2D CAD system

GH_ACCOUNT =	qcad
GH_PROJECT =	qcad
GH_TAGNAME =	v3.17.3.6

CATEGORIES=	cad graphics

HOMEPAGE=	http://www.qcad.org

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		x11/qt4 \
			devel/qmake

COMPILER =	clang

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
MAKE_FLAGS += TARGET_LDFLAGS='-lc++abi -lpthread'
WANTLIB +=	c++abi pthread
.endif
