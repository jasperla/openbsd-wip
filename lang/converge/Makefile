# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		programming language with compile-time meta-programming

DISTNAME =		converge-2.0
EXTRACT_SUFX =		.tar.bz2

# Uses RPython from the PyPy sources
PYPY_V =		2.1
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			pypy-${PYPY_V}-src${EXTRACT_SUFX}:0
MASTER_SITES0 =		https://bitbucket.org/pypy/pypy/downloads/

CATEGORIES =		lang

HOMEPAGE =		http://convergepl.org

# MIT (? XXX)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://convergepl.org/releases/2.0/

PYPY_SRC =		${WRKDIR}/pypy-${PYPY_V}-src
CONFIGURE_ENV +=	PYPY_SRC=${PYPY_SRC}
CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

MAKE_ENV +=		PYTHONPATH=${PYPY_SRC}

# XXX there is a test suite.
#NO_TEST =		Yes

.include <bsd.port.mk>
