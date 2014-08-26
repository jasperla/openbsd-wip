# $OpenBSD$

V =		3.0
COMMENT =	open asset import library
DISTNAME =	assimp--${V}.1270-source-only
PKGNAME =	assimp-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	multimedia
SUBST_VARS +=	PKGNAME

SHARED_LIBS +=  assimp                    0.0 # 3.0

HOMEPAGE =	http://assimp.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=assimp/}

MODULES =	devel/cmake \
		gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

.include <bsd.port.mk>
