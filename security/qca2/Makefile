# $OpenBSD: Makefile,v 1.12 2016/03/18 23:12:19 naddy Exp $

COMMENT =	Qt Cryptographic Architecture

DISTNAME =	qca-2.1.0

PKGNAME =	qca2-2.1.0

CATEGORIES =	security

SHARED_LIBS +=	qca2	1.0

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/

WANTLIB += c m stdc++

CFLAGS +=		-DOPENSSL_NO_SSL2

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DBUILD_PLUGINS:Bool=Off \
			-DQT4_BUILD:Bool=On

MODULES =		devel/cmake \
			x11/qt4

BUILD_DEPENDS =		devel/doxygen>=1.8.10

NO_TEST =		Yes

.include <bsd.port.mk>
