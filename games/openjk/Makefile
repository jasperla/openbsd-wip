# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $
# Use /usr/ports/infrastructure/bin/portcheck

#ONLY_FOR_ARCHS =	???

V = 	20171127

COMMENT =	community effort to maintain and improve Jedi Academy and Jedi Outcast

DISTNAME =	openjk-${V}
#PKGNAME =	???

GH_ACCOUNT =	JACoders
GH_PROJECT =	OpenJK
#GH_TAGNAME =	1.0
GH_COMMIT =	1d125c7d15b6e91abe67a3de4e47e27f1406739d

CATEGORIES =	games x11

#MAINTAINER =		???

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MODULES =		devel/cmake
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		zlib sdl2
#TEST_DEPENDS =		???

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share

#MAKE_FLAGS =		-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share
#MAKE_ENV =		CMAKE_INSTALL_PREFIX=${LOCALBASE}/share
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

# Things that we don't want to do for this port/package
# Generally, DON'T set anything to No if it's not needed.
# The time gained is not worth it.
#
#NO_BUILD =		Yes
#NO_TEST =		Yes

#CFLAGS =		???
CXXFLAGS =		-I${X11BASE}/include/GL -I${X11BASE}/include
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

post-extract:
	rm ${WRKSRC}/lib/SDL2/include/SDL_config_macosx.h.orig	# .orig file that comes with the distfiles and only confuses the 'make update-patches' script'

.include <bsd.port.mk>
