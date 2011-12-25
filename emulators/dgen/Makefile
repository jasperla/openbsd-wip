# $Id: Makefile,v 1.4 2009/02/26 18:32:45 yason Exp $
# $OpenBSD$

COMMENT =		Sega Genesis/MegaDrive emulator
DISTNAME =		dgen-sdl-1.23

CATEGORIES =		emulators

HOMEPAGE =			http://tamentis.com/projects/dgen/
MASTER_SITES =		http://tamentis.com/projects/dgen/files/

MAINTAINER = 		Nickolay Burkov <nbrk@linklevel.net>

ONLY_FOR_ARCHS = 	i386 amd64

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL c m pthread stdc++

USE_X11 =		Yes

LIB_DEPENDS =		devel/sdl
BUILD_DEPENDS =		devel/nasm

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-sdltest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dgen
	for file in AUTHORS COPYING README; do \
		${INSTALL_DATA} ${WRKSRC}/$$file ${PREFIX}/share/doc/dgen; \
	done

.include <bsd.port.mk>
