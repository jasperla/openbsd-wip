# $OpenBSD$

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???

CATEGORIES =		devel games misc productivity x11
COMMENT =		library for accessing and displaying Google gadgets
DISTNAME =		google-gadgets-for-linux-0.11.2
PKGNAME =		${DISTNAME:S/-for-linux//}
HOMEPAGE =		http://code.google.com/p/google-gadgets-for-linux/

#SHARED_LIBS =		???

#MAINTAINER =		???

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

EXTRACT_SUFX =		.tar.bz2
MASTER_SITES =		http://google-gadgets-for-linux.googlecode.com/files/

# GNU configure also presents, wanting libltdl, GMake and other crap.
MODULES =		devel/cmake x11/qt4

BUILD_DEPENDS =		archivers/zip

RUN_DEPENDS =		archivers/zip

# TODO check for x11/dbus-glib dependency
LIB_DEPENDS =		devel/glib \
			devel/pango \
			devel/libsoup \
			devel/libtool,-ltdl \
			devel/xulrunner/1.9,-devel \
			graphics/cairo \
			multimedia/gstreamer-0.10/core \
			multimedia/gstreamer-0.10/plugins-base \
			net/curl \
			textproc/libxml \
			www/webkit \
			x11/dbus \
			x11/gnome/librsvg \
			x11/gtk+2

SEPARATE_BUILD =	simple
#USE_GROFF =		Yes

#REGRESS_IS_INTERACTIVE =	Yes
#NO_REGRESS =		Yes
#REGRESS_TARGET =	???
#REGRESS_DEPENDS =	???

CONFIGURE_ARGS +=	-DGGL_DEFAULT_BROWSER_PLUGINS_DIR=${LOCALBASE}/lib/mozilla/plugins

# There are .orig leftovers in distribution
PATCHORIG =		.ports.orig

.include <bsd.port.mk>
