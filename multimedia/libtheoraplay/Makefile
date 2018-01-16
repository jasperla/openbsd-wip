# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =		simple library to make decoding of Ogg Theora videos easier

# HG_CHANGESET and HG_COMMIT must be kept in sync.
HG_CHANGESET =		61
HG_COMMIT =		fb533bb8633e

DISTNAME =		${HG_COMMIT}
PKGNAME =		libtheoraplay-${HG_CHANGESET}
CATEGORIES =		multimedia
MASTER_SITES =		https://hg.icculus.org/icculus/theoraplay/archive/

SHARED_LIBS =		theoraplay	0.0	# Changeset 61

HOMEPAGE =		https://icculus.org/theoraplay/

MAINTAINER =		Thomas Frohwein <frohwein@ymail.com>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread
WANTLIB += ogg theoradec vorbis

LIB_DEPENDS =		audio/libogg \
			audio/libvorbis \
			multimedia/libtheora

CFLAGS+=		-shared -I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib -lpthread -logg -lvorbis -ltheoradec
WRKDIST =		${WRKDIR}/theoraplay-${HG_COMMIT}

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
