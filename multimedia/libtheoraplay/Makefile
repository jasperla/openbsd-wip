# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	simple library to make decoding of Ogg Theora videos easier

# HG_CHANGESET and HG_COMMIT must be kept in sync.
HG_CHANGESET =	61
HG_COMMIT =	fb533bb8633e

DISTNAME =	${HG_COMMIT}
PKGNAME =	libtheoraplay-${HG_CHANGESET}

SHARED_LIBS =	theoraplay	0.0	# Changeset 61

CATEGORIES =	multimedia

HOMEPAGE =	https://icculus.org/theoraplay/

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# zlib license
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

MASTER_SITES =	https://hg.icculus.org/icculus/theoraplay/archive/

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		ogg vorbis theora

CFLAGS+=	-shared -I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lpthread -logg -lvorbis -ltheoradec
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/theoraplay-${HG_COMMIT}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

SEPARATE_BUILD =	YES

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} ${LDFLAGS} -o \
		${WRKBUILD}/libtheoraplay.so.${LIBtheoraplay_VERSION}

do-install:
	${INSTALL_DATA} ${WRKSRC}/*theora*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libtheoraplay.so.${LIBtheoraplay_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
