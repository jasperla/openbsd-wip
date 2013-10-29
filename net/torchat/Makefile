# $OpenBSD$

COMMENT =		anonymous chat via tor

V =			2.0-alpha-14
DISTNAME =		TorChat-$V
PKGNAME =		torchat-$V

#SHARED_LIBS =		???

CATEGORIES =		net

HOMEPAGE =		https://github.com/prof7bit/TorChat

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# 
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

MASTER_SITES =		https://github.com/prof7bit/TorChat/archive/
#MASTER_SITES =		${HOMEPAGE}
#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=subdir/}
#MASTER_SITES =		${MASTER_SITE_foo:=subdir/}
DISTFILES =		TorChat-$V${EXTRACT_SUFX}{$V${EXTRACT_SUFX}}
#EXTRACT_ONLY =		???
#EXTRACT_SUFX =		.tar.bz2

#MODULES =		???
BUILD_DEPENDS =	lang/fpc
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =	???

USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_TEST =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =	???

.include <bsd.port.mk>
