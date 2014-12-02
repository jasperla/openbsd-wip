# $OpenBSD $

COMMENT =		command line double-entry accounting ledger

VERSION =		3.1
PKGNAME =		ledger-${VERSION}
CATEGORIES =		productivity
DISTNAME = 		v${VERSION}

HOMEPAGE =		http://www.ledger-cli.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

SHARED_LIBS =		amounts	0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		ledger
GH_PROJECT =		ledger

WANTLIB =		c gmp>=4 m pcre stdc++

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++
MODGCC4_VERSION =	4.9

CONFIGURE_STYLE =	cmake

MODULES =		devel/cmake \
			lang/python \
			gcc4

LIB_DEPENDS =		devel/boost \
			devel/gmp   \
			devel/mpfr  \
			devel/pcre  \
			devel/utfcpp

WRKDIST =		${WRKDIR}/ledger-${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/ledger
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ledger
	${INSTALL_DATA} ${WRKDIST}/contrib/* ${PREFIX}/share/examples/ledger

.include <bsd.port.mk>
