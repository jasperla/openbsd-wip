# $OpenBSD$

COMMENT =		Mercury is a pure logic programming language

V =			20.01.1
REVISION = 		1
DISTNAME =		mercury-srcdist-$V
PKGNAME =		mercury-$V
CATEGORIES =		lang

HOMEPAGE =		https://mercurylang.org

MAINTAINER =		Mathieu Kerjouan <niamkik@protonmail.com>

PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/bison

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =
CONFIGURE_ENV =		CC=egcc
MAKE_ENV =		${CONFIGURE_ENV}
USE_GMAKE =		Yes
YACC =			bison

EXTRACT_SUFX =		.tar.gz
WRKDIST =		${WRKDIR}/${DISTNAME}


MASTER_SITES =		http://dl.mercurylang.org/release/

.include <bsd.port.mk>
