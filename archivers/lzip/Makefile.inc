# $OpenBSD$

# This directory contain every lzip project.
# lzd isn't included due to the educational purpose of this and the author
# doesn't recommend the use of lzd in production.

CATEGORIES =		archivers

MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

MASTER_SITES ?=		${MASTER_SITE_SAVANNAH:=lzip/} \
			${MASTER_SITE_SAVANNAH:=lzip/old/}

DIST_SUBDIR =		lzip

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	${CONFIGURE_SHARED} CC="${CC}" CXX="${CXX}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

TEST_TARGET =		check
