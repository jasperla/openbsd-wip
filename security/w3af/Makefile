# $OpenBSD: $

# Reasons why the port/package shouldn't be built
#
#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???
#COMES_WITH =		???
#BROKEN =		reason

COMMENT =		Web Application Attack and Audit Framework

DISTNAME =		w3af-1.0-stable
PKGNAME =		${DISTNAME:S/-stable//}

# for any port that creates shared libraries.
# both libtool and cmake handle this automatically.
# for libtool-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =		???

CATEGORIES =		security www net

HOMEPAGE =		http://w3af.sourceforge.net/

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes 

# "make port-lib-depends-check" can help
#WANTLIB =		???

# where the source files and patches can be fetched
#
#MASTER_SITES =		???
#MASTER_SITES =		${HOMEPAGE}
#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=w3fa/w3af/w3af%201.0-stable/}

# Using %20 for space character.
MASTER_SITES =		http://downloads.sourceforge.net/project/w3af/w3af/${DISTNAME:S/-/%20/1}/
EXTRACT_SUFX =		.tar.bz2

#DIST_SUBDIR =		???

# PATCHFILES are also retrieved from MASTER_SITES*
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0

# Dependencies
#
#MODULES =		???
#BUILD_DEPENDS =	???

RUN_DEPENDS =		devel/py-SOAPpy \
			devel/py-fpconst \
			devel/py-simplejson \
			devel/pysvn \
			math/graphviz,-main \
			net/scapy \
			security/py-openssl \
			textproc/libxml,-python \
			textproc/py-nltk \
			textproc/py-pdf \
			x11-py-gtksourceview \
			x11/gtk+2,-main \
			x11/py-gtk2 \

#LIB_DEPENDS =		???
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

# build/configuration variables
#
#SEPARATE_BUILD =	simple (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
# Programs that uses libtool should use this option,
# unless there is a really good reason not to.
#USE_LIBTOOL =		Yes
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
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

# for gnu stuff
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
# config.guess and others are copied here
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC}

# Is the build automagic or is it interactive
#
#IS_INTERACTIVE =		Yes
#REGRESS_IS_INTERACTIVE =	Yes

# Assume you have one multiple choice flavor: 1 2 3 and switches a b.
# You would write
#
#FLAVORS =	1 2 3 a b
#FLAVOR ?=
# grab multiple choice value
#CHOICE = ${FLAVOR:L:Na:Nb}
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
#.if ${FLAVOR:L:Ma}
# code for a
#.endif
#.if ${FLAVOR:L:Mb}
# code for b
#.endif

# Things that we don't want to do for this port/package
# Generally, DON'T set anything to No if it's not needed.
# The time gained is not worth it.
#
#NO_BUILD =		Yes
#NO_REGRESS =		Yes

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
#REGRESS_TARGET =	???

.include <bsd.port.mk>
