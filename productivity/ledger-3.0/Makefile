# $OpenBSD $

COMMENT=		command line double-entry accounting ledger

PKGNAME=		ledger-3.0
CATEGORIES=		productivity
DISTNAME = 		next

HOMEPAGE=		http://www.ledger-cli.org

MAINTAINER=		Sergey Bronnikov <estetus@gmail.com>

#SHARED_LIBS=		amounts	0.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		https://github.com/ledger/ledger/archive/

EXTRACT_SUFX =		.zip

WANTLIB =		c gmp>=4 m pcre stdc++

MODULES =		devel/cmake \
			lang/python

LIB_DEPENDS =		devel/gmp \
			devel/pcre \
			devel/boost

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	acprep
CONFIGURE_ARGS =	opt make

#SEPARATE_BUILD=	Yes

WRKSRC=${WRKDIR}/ledger-next
WRKDIST=${WRKDIR}/ledger-next

pre-configure:
	cd ${WRKSRC} && mkdir -p build

pre-build:
	cd build/ledger/opt && make install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ledger

.include <bsd.port.mk>
