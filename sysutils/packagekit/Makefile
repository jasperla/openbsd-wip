# $OpenBSD$

CATEGORIES =	sysutils
COMMENT =	cross-platform package management framework
DISTNAME =	PackageKit-0.7.0
HOMEPAGE =	http://www.packagekit.org/
MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

MASTER_SITES =	http://www.packagekit.org/releases/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS +=	packagekit-glib2	0.0 # 14.9
SHARED_LIBS +=	packagekit-qt		0.0 # 14.9
SHARED_LIBS +=	packagekit-qt2		0.0 # 2.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c expat kvm m pthread pthread-stubs stdc++ z
WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm drm fontconfig freetype
WANTLIB += xcb xcb-render xcb-shm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gtk-3
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += polkit-backend-1 polkit-gobject-1
WANTLIB += archive bz2 dbus-1 dbus-glib-1 ffi lzma pcre png sqlite3

MODULES =		devel/gettext lang/python x11/qt4

BUILD_DEPENDS =		textproc/p5-XML-Parser \
			sysutils/ggrep

LIB_DEPENDS =		devel/atk \
			devel/glib \
			graphics/gdk-pixbuf2 \
			sysutils/polkit \
			x11/gtk+3 \
			x11/qt4,-main \
			x11/qt4,-sqlite

RUN_DEPENDS =		sysutils/consolekit \
			sysutils/polkit

#REGRESS_DEPENDS =	???

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu autoconf
#USE_GROFF =		Yes

AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--disable-browser-plugin \
			--disable-gstreamer-plugin \
			--with-security-framework=polkit \
			--localstatedir=/var

COPTS +=		-I${LOCALBASE}/include \
			-L${LOCALBASE}/lib

post-patch:
	@echo "====> Regenerating MOC files"
	@find ${WRKSRC} -name '*.moc' | while read P; do \
		F="$${P##*/}"; \
		(cd "$${P%/*}" && \
		echo moc4 -o "$$F" "$${F%.moc}.h" >&2 && \
		moc4 -o "$$F" "$${F%.moc}.h"); \
	done

.include <bsd.port.mk>
