# $OpenBSD$

COMMENT =		cross-platform scripting library

V =			2.32.0
PKGNAME =		angelscript-${V}
DISTNAME =		angelscript_${V}

SHARED_LIBS =		angelscript 0.0

EXTRACT_SUFX =		.zip

CATEGORIES =		lang
HOMEPAGE =		http://www.angelcode.com/angelscript

# ZLIB
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/sdk/files/

USE_GMAKE =		Yes
WANTLIB +=		m ${COMPILER_LIBCXX}

MAKE_FLAGS =		CXX='${CXX}' CXXFLAGS='${CXXFLAGS} ${PICFLAG}'

WRKDIST =		${WRKDIR}/sdk
WRKSRC =		${WRKDIR}/sdk/angelscript/projects/gnuc

pre-build:
	sed -i -e 's|ifdef __OPTIMIZE__|if defined(__OPTIMIZE__) \&\&\ !defined(__clang__)|g' \
		-e 's,ifdef __OPTIMIZE__ifdef __OPTIMIZE__,,g' ${WRKDIST}/angelscript/source/*.cpp
	sed -i -e 's|\$$(DESTDIR)/||g' -e 's|^.*CP_SYMLINK.*$$||g' \
		-e 's|"\$$(SHLIB)$$|"$$(LIBNAME).so.${LIBangelscript_VERSION}|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
