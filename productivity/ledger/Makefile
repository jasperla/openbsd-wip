# $OpenBSD $

COMMENT =		command line double-entry accounting ledger

VERSION =		3.1
PKGNAME =		ledger-${VERSION}
CATEGORIES =		productivity
DISTNAME = 		v${VERSION}

HOMEPAGE =		http://www.ledger-cli.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

#SHARED_LIBS =		amounts	0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		ledger
GH_PROJECT =		ledger

WANTLIB =		c gmp>=4 m pcre stdc++

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DCMAKE_C_COMPILER=/usr/local/bin/clang \
			-DCMAKE_CXX_COMPILER=/usr/local/bin/clang++

MODULES =		devel/cmake \
			lang/python \
			lang/clang

MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c++

LIB_DEPENDS =		devel/boost \
			devel/gmp   \
			devel/mpfr  \
			devel/pcre  \
			devel/utfcpp

WRKDIST =		${WRKDIR}/ledger-${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger

.include <bsd.port.mk>
