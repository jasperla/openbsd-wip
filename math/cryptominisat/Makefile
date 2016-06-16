# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =		advanced SAT solver

DISTNAME =		cryptominisat
VERSION =		4.5.3
PKGNAME =		${DISTNAME}-${VERSION}

GH_ACCOUNT =		msoos
GH_PROJECT =		cryptominisat
GH_TAGNAME =		${VERSION}

CATEGORIES =		math devel

SHARED_LIBS +=		cryptominisat4            0.0 # 4.5

MAINTAINER =		Michael McConville <mmcco@mykolab.com>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			lang/clang
MODCLANG_LANGS =	c++
MODCLANG_ARCHS =	*

# taken from FreeBSD, disable autodetected or superfluous features
CONFIGURE_ARGS =	-DNOMYSQL=1 -DNOM4RI=1 -DPYTHON_EXECUTABLE=0

BUILD_DEPENDS =		devel/boost

# disable tests for now because it requires rebuilding with ENABLE_TESTING=1
NO_TEST =		Yes

.include <bsd.port.mk>
