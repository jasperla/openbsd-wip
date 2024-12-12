COMMENT =	file archiver with a high compression ratio

Vmajor =	24
Vminor =	09

Vdot =		${Vmajor}.${Vminor}
Vnodot =	${Vmajor}${Vminor}

PKGNAME =	7zip-${Vdot}
DISTNAME =	7z${Vnodot}-src

CATEGORIES =	archivers

HOMEPAGE =	https://sourceforge.net/projects/sevenzip/

MAINTAINER = Josh Grosse <josh@jggimi.net>

# LGPL, except select unRAR modules licensed separately as Freeware
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=sevenzip/}
EXTRACT_SUFX =		.tar.xz

FIX_CRLF_FILES = 	CPP/7zip/7zip_gcc.mak \
			CPP/7zip/Bundles/Alone2/makefile.gcc \
			CPP/Build.mak \
			CPP/Windows/SystemInfo.cpp \
			C/warn_gcc.mak \
			CPP/7zip/warn_gcc.mak \
			C/7zip_gcc_c.mak

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}
WRKSRC =		${WRKDIST}/CPP/7zip/Bundles/Alone2

COMPILER =		base-clang ports-gcc

MAKE_FILE_base-clang =  ../../cmpl_clang.mak
MAKE_FILE_ports-gcc =   ../../cmpl_gcc.mak
MAKE_FILE =             ${MAKE_FILE_${CHOSEN_COMPILER}}

WANTLIB =		${COMPILER_LIBCXX} c m

FLAVORS =		unrar
FLAVOR?=
.if ${FLAVOR:Munrar}
PATCH_LIST =	patch-* unrar-*
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/b/c/7zz ${PREFIX}/bin

.include <bsd.port.mk>
