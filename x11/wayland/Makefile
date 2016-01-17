# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		X server replacement
DISTNAME =		wayland-1.9.0

SHARED_LIBS =	wayland-client		0.0 # 3.0
SHARED_LIBS +=	wayland-cursor		0.0 # 0.0
SHARED_LIBS +=	wayland-server		0.0 # 1.0

CATEGORIES =		graphics x11

HOMEPAGE =		http://wayland.freedesktop.org/

# Default value is ports@openbsd.org, no need to fill in
#MAINTAINER =		???

# MIT, examples (not packaged) are GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c expat ffi m pthread

MASTER_SITES =		http://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

BUILD_DEPENDS =		math/graphviz
LIB_DEPENDS =		devel/libffi

SEPARATE_BUILD =	Yes
# uses gmake syntax
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu autoconf automake
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

# Is the build automagic or is it interactive
#
#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

# Assume you have one multiple choice flavor: 1 2 3 and switches a b.
# You would write
#
#FLAVORS =	1 2 3 a b
#FLAVOR ?=
# grab multiple choice value
#CHOICE = ${FLAVOR:Na:Nb}
# check that CHOICE is 1 OR 2 OR 3, or error out
#.if ${CHOICE} == "1"
# code for 1
#.elif ${CHOICE} == "2"
# code for 2
#.elif ${CHOICE} == "3"
# code for 3
#.else
#ERRORS += "Fatal: Conflicting flavor: ${FLAVOR}"
#.endif
# check for switches
#.if ${FLAVOR:Ma}
# code for a
#.endif
#.if ${FLAVOR:Mb}
# code for b
#.endif

# Things that we don't want to do for this port/package
# Generally, DON'T set anything to No if it's not needed.
# The time gained is not worth it.
#
#NO_BUILD =		Yes
#NO_TEST =		Yes

# Overrides for default values
#
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
#TEST_TARGET =		???

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
	touch ${WRKSRC}/aclocal.m4

.include <bsd.port.mk>
