# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		original multiplayer wargame

DISTNAME =		liquidwar6-0.2.3551
#PKGNAME =		???
#PKGNAME-foo =		???	for multi packages

# for any port that creates shared libraries.
# both libtool and cmake handle this automatically.
# for libtool-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =		???

CATEGORIES =		games

HOMEPAGE =		https://www.gnu.org/software/liquidwar6/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL GLU SDL SDL_image SDL_mixer SDL_ttf X11 X11-xcb
WANTLIB += Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo crypto
WANTLIB += cunit curl drm execinfo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 guile
WANTLIB += harfbuzz iconv idn intl jpeg ltdl m mikmod ncurses
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs readline smpeg sndio sqlite3
WANTLIB += ssl stdc++ tiff usbhid vorbis vorbisfile webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_GNU:=liquidwar6/}
#MASTER_SITES =		${MASTER_SITE_foo:=subdir/}
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
MODULES =		converters/libiconv
#BUILD_DEPENDS =		
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/cunit \
			devel/gmp \
			devel/libexecinfo \
			devel/libidn \
			devel/libtool,-ltdl \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			lang/guile \
			net/curl \
			x11/gtk+2
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

# build/configuration variables
#
#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
# Programs that require GNU libtool to build instead of the OpenBSD one
# should use this option.
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
CONFIGURE_STYLE =	gnu
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	--enable-cunit \
			--enable-allinone
#CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"
CONFIGURE_ENV =		LDFLAGS=-L${LOCALBASE}/lib \
			LIBS=-lexecinfo

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

.include <bsd.port.mk>
