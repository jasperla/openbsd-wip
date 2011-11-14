# $OpenBSD$

COMMENT =	cross hosted tool chain for Windows

V = 		1.0.1
BASENAME =	x86-mingw32-build
DISTNAME =	${BASENAME}-${V}-sh
PKGNAME =	mingw-${V}
WRKDIST =	${WRKDIR}/${BASENAME}-${V}
CATEGORIES =	devel

HOMEPAGE =	http://www.mingw.org

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

EXTRACT_SUFX =	.tar.bz2
EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}

SCRIPT_MASTER = files/Other/Cross-Hosted%20MinGW%20Build%20Tool/${BASENAME}-${V}
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mingw/}{SCRIPT_MASTER}-rc1

TOOL_SUFX =	.tar.gz
TOOL_MASTER = ${MASTER_SITE_SOURCEFORGE:=mingw/}files/MinGW/Base/

TOOL_GCC =	gcc-core-3.4.5-20060117-2
MASTER_SITES0 = ${TOOL_MASTER}gcc/Version3/Previous%20Release_%20{TOOL_GCC}

TOOL_BINUTILS =	binutils-2.20.1
MASTER_SITES1 = ${TOOL_MASTER}binutils/${TOOL_BINUTILS}

TOOL_WRT =	mingwrt-3.18
MASTER_SITES2 = ${TOOL_MASTER}mingw-rt/${TOOL_WRT}

TOOL_W32API =	w32api-3.14
MASTER_SITES3 = ${TOOL_MASTER}w32api/${TOOL_W32API}

TOOLCHAIN =	${TOOL_BINUTILS}-src${TOOL_SUFX}:0			\
		${TOOL_GCC}-src${TOOL_SUFX}:1				\
		${TOOL_WRT}-mingw32-src${TOOL_SUFX}:2			\
		${TOOL_W32API}-mingw32-src${TOOL_SUFX}:3

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} ${TOOLCHAIN}

USE_GMAKE =	Yes
do-build:
	env WRKDIST=${WRKDIST} FULLDISTDIR=${FULLDISTDIR} WRKINST=${WRKINST} \
	    sh ${WRKBUILD}/${BASENAME}.sh

do-install:
	@echo "Taken care of by the build script."

.include <bsd.port.mk>
