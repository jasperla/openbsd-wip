# $OpenBSD$

COMMENT =               cross-platform scripting library

V =                     2.30.2
PKGNAME =               angelscript-${V}
DISTNAME =              angelscript_${V}

SHARED_LIBS =           angelscript_s 0.0

EXTRACT_SUFX=           .zip

CATEGORIES =            devel
HOMEPAGE =              http://www.angelcode.com/angelscript

MAINTAINER =            David Carlier <devnexen@gmail.com>

# ZLIB
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =          ${HOMEPAGE}/sdk/files/

USE_GMAKE =             Yes
WANTLIB +=              c stdc++

MAKE_FLAGS =            CXX='${CXX}' CXXFLAGS='${CXXFLAGS} ${PICFLAG}'
MAKE_FLAGS +=           SHLIB_VERSION=${LIBangelscript_s_VERSION}

WRKDIST =               ${WRKDIR}/sdk
WRKSRC =                ${WRKDIR}/sdk/angelscript/projects/gnuc

post-extract:
			perl -i -pe 's/\r$$//' ${WRKDIST}/angelscript/source/as_memory.cpp

.include <bsd.port.mk>
