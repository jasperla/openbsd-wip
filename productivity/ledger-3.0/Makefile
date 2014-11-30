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

MASTER_SITES =		https://github.com/ledger/ledger/archive/

WANTLIB =		c gmp>=4 m pcre stdc++

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++
MODGCC4_VERSION =	4.9

MODULES =		devel/cmake \
			lang/python \
			gcc4

LIB_DEPENDS =		devel/gmp  \
			devel/mpfr \
			devel/pcre \
			devel/boost

#CONFIGURE_STYLE =	simple
#CONFIGURE_SCRIPT =	acprep
#CONFIGURE_ARGS =	opt make

WRKDIST =		${WRKDIR}/ledger-${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger

.include <bsd.port.mk>
