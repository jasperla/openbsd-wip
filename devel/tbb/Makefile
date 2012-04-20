# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		C++ threading library

V =			4.0
U =			3
DISTNAME =		tbb${V:S/.//}_20120201oss_src
PKGNAME =		tbb-${V}u${U}

SHARED_LIBS =		tbb		0.0 \
			tbbmalloc	0.0

CATEGORIES =		devel

HOMEPAGE =		http://threadingbuildingblocks.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2 with runtime exception
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

MASTER_SITES =		${HOMEPAGE}/uploads/77/182/${V}%20update%20${U}/
EXTRACT_SUFX =		.tgz

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
MAKE_ENV =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}" tbb_build_prefix=""
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/${DISTNAME:S/_src//}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

ALL_TARGET =		tbb tbbmalloc tbbproxy
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

do-install:
.	for l in tbb tbbmalloc
	${INSTALL_DATA} ${WRKSRC}/build/_release/lib${l}.so \
		${PREFIX}/lib/lib${l}.so.${LIB$(l)_VERSION}
.	endfor
	cd ${WRKSRC}/include && pax -rw . ${PREFIX}/include

.include <bsd.port.mk>
