# $OpenBSD$

COMMENT =		Android devices management tools

V =			6.0.1
R =			43
DISTNAME =		android-platform-tools-$Vpl$R

GH_ACCOUNT =		android
GH_PROJECT =		platform_system_core
GH_TAGNAME =		android-$V_r$R

CATEGORIES =		comms sysutils devel

HOMEPAGE =		http://developer.android.com/sdk/index.html

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

# if more master sites are needed...
#MASTER_SITES0 =
# ...
#DISTFILES =		???
#EXTRACT_ONLY =		???
#EXTRACT_SUFX =		.tar.bz2

#DIST_SUBDIR =		???

# PATCHFILES are also retrieved from MASTER_SITES*
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0

# Dependencies
#
MODULES =		lang/clang
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c c++
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

MAKE_ENV +=		SRCDIR="${WRKSRC}" MAKEOBJDIR="${WRKBUILD}" \
			CXXFLAGS="${CXXFLAGS}"
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

# build/configuration variables
#
SEPARATE_BUILD =	Yes
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
# Programs that require GNU libtool to build instead of the OpenBSD one
# should use this option. Add a comment explaining why. Don't use this if
# a port requires libtool's .m4 files but otherwise can use OpenBSD libtool,
# in that case use "BUILD_DEPENDS=devel/libtool" instead.
#USE_LIBTOOL=		gnu
# Set CONFIGURE_STYLE to value corresponding to some standard configuration
# 	  perl [modbuild]: perl's MakeMaker Makefile.PL (modbuild: perl's
#	  Module::Build Build.PL)
# 	  gnu [autoconf] [old] [dest]: gnu style configure (old: no
# 	  sysconfdir), (dest: add DESTDIR, does not handle it),
# 	  (autoconf: needed by port, implies gnu)
# 	XXX: cygnus products do NOT use autoconf for making the main
# 		configure from configure.in
# 	  imake [noman]: port uses imake for configuration.
#	  (noman: no man page installation)
# 	  simple: port has its own configure script
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS =	???
#CONFIGURE_ENV =	???

# for gnu stuff
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
# config.guess and others are copied here
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC})

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
#CFLAGS =		-I${WRKSRC}/include -I${WRKSRC}
CFLAGS +=		-I${WRKSRC}/include -I${WRKSRC}
CXXFLAGS +=		-I${WRKSRC}/include -I${WRKSRC} --std=c++11
#LDFLAGS =		???
MAKE_FILE =		${FILESDIR}/Makefile
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		${WRKDIST}/libcutils
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

SUBDIRS = libcutils

.include <bsd.port.mk>
