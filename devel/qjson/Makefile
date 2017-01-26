# $OpenBSD: Makefile,v 1.7 2016/11/12 20:50:41 jca Exp $

CATEGORIES =	devel

COMMENT=	Qt-based library that maps JSON data to QVariant objects

GH_ACCOUNT =	flavio
GH_PROJECT =	qjson
GH_TAGNAME =	0.9.0

HOMEPAGE =	http://qjson.sourceforge.net/

SHARED_LIBS =	qjson	0.0

MODULES =	devel/cmake x11/qt4

WANTLIB += QtGui m stdc++

# LGPLv2
PERMIT_PACKAGE_CDROM =		Yes

# XXX Tests fail onyl with `make regress`
CONFIGURE_ARGS =	-DQJSON_BUILD_TESTS:Bool=Yes

.include <bsd.port.mk>
