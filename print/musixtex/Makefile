# $OpenBSD$
#

#
# Very short description of the package, 60 chars max
#
COMMENT=		"typesetting package for TeX for music"
# COMMENT-foo=		"???"	for multi packages

# 
# What port/package will be created
#
DISTNAME=		musixtex-T112
PKGNAME=		musixtex-112
CATEGORIES=		textproc

HOMEPAGE=		http://icking-music-archive.sunsite.dk/software/indexmt6.html

# where to send bitches about this port
# Put a full-fledged email address, like
# MAINTAINER=	John Doe <doe57@machine.somewhere.org>
# Default value is ports.openbsd.org, no need to fill in
MAINTAINER=		todd@fries.net

# Licensing:  This determines what we can distribute.
# When you determine the license type, make sure to look at ALL distfiles.
# Every distfile can have a different license.  The PERMIT_* values are
# determined by the most restrictive license.  If you have two licenses
# that are in conflict, set PERMIT_* based on the most restrictive one.
# Make SURE you get these values right.

# Put a comment there to state what's going on. 
# Can be as brief as `BSD' or `GPL', but it'd better be easy to check,
# if someone wants to double-check licensing.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
#
MASTER_SITES=	http://icking-music-archive.sunsite.dk/software/musixtex/ \
		http://mirrors.sunsite.dk/ctan/fonts/musixtex/ps-type1/
#MASTER_SITES=		${MASTER_SITE_foo:=subdir/}
# if more master sites are needed...
#MASTER_SITES0=		
# ...
DISTFILES=		${DISTNAME}.tar.gz musixps-unix.tar.gz
#EXTRACT_ONLY=		Yes
#EXTRACT_SUFX=		.tar.Z

#DIST_SUBDIR=		???

# PATCHFILES are also retrieved from MASTER_SITES*
#PATCHFILES=		???
#PATCH_DIST_STRIP=	-p0

# Dependencies
#
#FETCH_DEPENDS=		???
#BUILD_DEPENDS=		???
#RUN_DEPENDS=		???
#LIB_DEPENDS=		???

#MAKE_FLAGS=		???
#MAKE_ENV=		???
#FAKE_FLAGS=		???

# build/configuration variables
#
# requires bsd.port.mk 1.89 or later
#
#SEPARATE_BUILD=	concurrent  (build simultaneously on all arches)
#SEPARATE_BUILD=	simple  (configure/build still recreates files in source)
#USE_X11=		Yes
#USE_GMAKE=		Yes
# Programs that come with libtool should NOT use this option.
# Instead they should have the appropriate patches added if needed
# to bring the OpenBSD support up to spec.
#USE_LIBTOOL=		Yes
# Set CONFIGURE_STYLE to value corresponding to some standard configuration
# 	  perl: perl's MakeMaker Makefile.PL
# 	  gnu [autoconf] [old] [dest]: gnu style configure (old: no
# 	  sysconfdir), (dest: add DESTDIR, does not handle it),
# 	  (autoconf: needed by port, implies gnu)
# 	XXX: cygnus products do NOT use autoconf for making the main 
# 		configure from configure.in
# 	  imake [noman]: port uses imake for configuration.
#   	  (noman: no man page installation)
# 	  simple: port has its own configure script
#CONFIGURE_STYLE=	
#CONFIGURE_SCRIPT=	??? (if other than configure)
#CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
#CONFIGURE_ENV=		???

# Is the build automagic or is it interactive
#
#IS_INTERACTIVE=	Yes

# Assume you have one multiple choice flavor: 1 2 3 and switches a b.
# You would write
#
#FLAVORS=1 2 3 a b
#FLAVOR?=
# grab multiple choice value
#CHOICE=${FLAVOR:L:Na:Nb}
# check that CHOICE is 1 OR 2 OR 3, or error out
#.if ${CHOICE} == "1"
# code for 1
#.elif ${CHOICE} == "2"
# code for 2
#.elif ${CHOICE} == "3"
# code for 3
#.else
#ERRORS+= "Fatal: Conflicting flavor: ${FLAVOR}"
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
#NO_DEPENDS=		Yes
#NO_CHECKSUM=		Yes
#NO_BUILD=		Yes
#NO_PKG_REGISTER=	Yes

# Overrides for default values
#
#CFLAGS=		???
#LDFLAGS=		???
#MAKE_FILE=		???
#SCRIPTS_ENV=		???
#WRKDIR=		??? if other than work
#WRKDIST=		??? if other than ${WRKDIR}/$DISTNAME
#WRKSRC=		??? if other than ${WRKDIST}
#WRKBUILD=		??? if other than ${WRKSRC}

#ALL_TARGET=		???
#INSTALL_TARGET=	???

post-extract:
	@mv ${WRKDIR}/musixps-unix ${WRKSRC}/.

do-build:
	cd ${WRKSRC}/system/c-source; \
		${CC} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} musixflx.c -o musixflx

LOC_DIR=	${PREFIX}/share/texmf-local
TEX_DIR=	${LOC_DIR}/tex/musixtex
FON_DIR=	${LOC_DIR}/fonts/source/musixtex
PFB_DIR=	${LOC_DIR}/fonts/type1/musixtex
PSM_DIR=	${LOC_DIR}/dvips/config
PDF_DIR=	${LOC_DIR}/dvipdfm/config
DOC_DIR=	${LOC_DIR}/doc/musixtex

do-install:
.for _d in TEX FON PFB PSM PDF DOC
	${INSTALL_DATA_DIR} ${${_d}_DIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/tex/* ${TEX_DIR}
	${INSTALL_DATA} ${WRKSRC}/mf/* ${FON_DIR}
	${INSTALL_DATA} ${WRKSRC}/musixps-unix/pfb/*pfb ${PFB_DIR}
	${INSTALL_DATA} ${WRKSRC}/musixps-unix/dvips/musix.map ${PSM_DIR}
	${INSTALL_DATA} ${WRKSRC}/musixps-unix/dvipdfm/musix.map ${PDF_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOC_DIR}
	${INSTALL_PROGRAM} ${WRKSRC}/system/c-source/musixflx ${PREFIX}/bin
	#dvips ${DOC_DIR}/musixdoc.dvi -o ${DOC_DIR}/musixdoc.ps

NO_REGRESS=	Yes

.include <bsd.port.mk>

# Notes:
#  'kpsewhich texmf.cnf' outputs '/usr/local/share/texmf/web2c/texmf.cnf'
#  uncomment 'TEXMFLOCAL = /usr/local/share/texmf.local' in the above file
#  TEXMF = {!!$TEXMFLOCAL,!!$TEXMFMAIN}
#
# ... add to pkg/MESSAGE more instructions, determine what to do about .map
#     files as described in musixps-unix/README step 3 and beyond
