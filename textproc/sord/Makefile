# $OpenBSD$

COMMENT =		lightweight C library for storing RDF data in memory

DISTNAME =		sord-0.16.4

SHARED_LIBS =		sord-0	0.0

CATEGORIES =		textproc
HOMEPAGE =		https://drobilla.net/software/sord

MAINTAINER=		Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pcre serd-0

MASTER_SITES =		http://download.drobilla.net/

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

MODPY_VERSION=          ${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS =		textproc/serd \
			devel/pcre

post-extract:
	@sed -i "s/vnum[ ]*=[ ]*SORD_VERSION/vnum = '${LIBsord-0_VERSION}'/g" \
	    ${WRKSRC}/wscript

do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} CXX='${CXX}' CC='${CC}' \
	    ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--mandir=${PREFIX}/man

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install

NO_TEST = Yes

.include <bsd.port.mk>
