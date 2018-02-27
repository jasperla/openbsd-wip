# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	first-person roguelike in a Lovecraftian setting

V=	20140618
DISTNAME =	eldritch-${V}
#PKGNAME =	???
#PKGNAME-foo =	???	for multi packages

#
# github:
# /releases/ -> preferred. ignore GH_*, just use MASTER_SITES and DISTNAME.
# /archive/ ->  GH_ACCOUNT and GH_PROJECT, plus either GH_TAGNAME or GH_COMMIT.
#
# set DISTNAME if using GH_COMMIT, or if using GH_TAGNAME and the tag is not in
# the format "v1.00" or "1.00".
#
GH_ACCOUNT =	sobkas
GH_PROJECT =	Eldritch
#GH_TAGNAME =	1.0
GH_COMMIT =	2d32af6fabcbdc37fe4890846cd3ddb2fe2b3696

# for any port that creates shared libraries.
# both libtool and cmake automatically set filenames based on this variable.
# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =	???

# the category used in the directory name, /usr/ports/<category>/portname,
# must be included and listed first.
CATEGORIES =	games

#HOMEPAGE =	???	URL

#MAINTAINER =		???

#zlib
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

# if more master sites are needed...
#MASTER_SITES0 =
# ...
#DISTFILES =		???
#EXTRACT_ONLY =		???
#EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
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

# Overrides for default values
#

CXXFLAGS+=  -I${X11BASE}/include -I${LOCALBASE}/include \
		-L${X11BASE}/lib -L${LOCALBASE}/lib

#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
WRKSRC =		${WRKDIST}/Code
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

.include <bsd.port.mk>
