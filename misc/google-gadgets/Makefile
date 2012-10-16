# $OpenBSD$

SHARED_ONLY =		Yes

CATEGORIES =		devel games misc productivity x11
COMMENT-main =		library for accessing and displaying Google gadgets
COMMENT-gtk =		GTK interface for Google gadgets library
COMMENT-qt =		Qt interface for Google gadgets library
HOMEPAGE =		http://code.google.com/p/google-gadgets-for-linux/

DISTNAME =		google-gadgets-for-linux-0.11.2
PKGNAME =		${DISTNAME:S/-for-linux//}
PKGNAME-main =		${PKGNAME}
PKGNAME-gtk =		${PKGNAME:S/-gadgets/-gadgets-gtk/}
PKGNAME-qt =		${PKGNAME:S/-gadgets/-gadgets-qt/}

REVISION-main =		2

SHARED_LIBS +=  ggadget-1.0               0.0 # 0.0
SHARED_LIBS +=  ggadget-dbus-1.0          0.0 # 0.0
SHARED_LIBS +=  ggadget-gtk-1.0           0.0 # 0.0
SHARED_LIBS +=  ggadget-js-1.0            0.0 # 0.0
SHARED_LIBS +=  ggadget-npapi-1.0         0.0 # 0.0
SHARED_LIBS +=  ggadget-qt-1.0            0.0 # 0.0
SHARED_LIBS +=  ggadget-xdg-1.0           0.0 # 0.0

MULTI_PACKAGES =	-main -gtk -qt

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =		.tar.bz2
MASTER_SITES =		http://google-gadgets-for-linux.googlecode.com/files/

# GNU configure needs more fixes than CMake one
MODULES =		devel/cmake x11/qt4

WANTLIB-common =  ICE SM X11 Xext c m stdc++ z
WANTLIB-common += ltdl

WANTLIB-main =  ${WANTLIB-common}
WANTLIB-main += Xt
WANTLIB-main += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += gstbase-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB-main += curl dbus-1 iconv intl soup-2.4 soup-gnome-2.4 xml2

WANTLIB-gtk =  ${WANTLIB-common}
WANTLIB-gtk += ggadget-1.0 ggadget-npapi-1.0 ggadget-xdg-1.0
WANTLIB-gtk += GL Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB-gtk += Xrender Xt expat fontconfig freetype pthread
WANTLIB-gtk += pthread-stubs xcb xcb-render xcb-shm
WANTLIB-gtk += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB-gtk += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB-gtk += iconv intl png rsvg-2

WANTLIB-qt =  ${WANTLIB-common} ${MODQT_WANTLIB}
WANTLIB-qt += ggadget-1.0 ggadget-js-1.0 ggadget-xdg-1.0
WANTLIB-qt += Xrender pthread
WANTLIB-qt += QtGui QtNetwork QtScript QtWebKit

BUILD_DEPENDS =		archivers/zip \
			devel/xulrunner/1.9,-devel

RUN_DEPENDS =		devel/desktop-file-utils

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			archivers/zip \
			devel/xulrunner/1.9

LIB_DEPENDS-common =	devel/libtool,-ltdl \

# TODO check for x11/dbus-glib dependency
LIB_DEPENDS-main = 	${LIB_DEPENDS-common} \
			devel/glib \
			devel/pango \
			devel/libsoup,-gnome \
			graphics/cairo \
			multimedia/gstreamer-0.10/core \
			multimedia/gstreamer-0.10/plugins-base \
			net/curl \
			textproc/libxml \
			www/webkit \
			x11/dbus

LIB_DEPENDS-gtk =	${BUILD_PKGPATH},-main \
			${LIB_DEPENDS-common} \
			x11/gtk+2 \
			x11/gnome/librsvg

LIB_DEPENDS-qt =	${BUILD_PKGPATH},-main \
			${LIB_DEPENDS-common} \
			${MODQT_LIB_DEPENDS}

SEPARATE_BUILD =	simple

#REGRESS_IS_INTERACTIVE =	Yes
#NO_REGRESS =		Yes
#REGRESS_TARGET =	???
#REGRESS_DEPENDS =	???

CONFIGURE_ARGS	+=	-DGGL_DEFAULT_BROWSER_PLUGINS_DIR=${LOCALBASE}/lib/mozilla/plugins

# There are .orig leftovers in distribution
PATCHORIG =		.ports.orig

.include <bsd.port.mk>
