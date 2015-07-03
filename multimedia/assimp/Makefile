# $OpenBSD$

V =		3.1.1
COMMENT =	open asset import library
DISTNAME =	assimp-$V
EXTRACT_SUFX =	.zip
CATEGORIES =	multimedia
SUBST_VARS +=	PKGNAME

SHARED_LIBS +=  assimp                    0.0 # 3.1

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
