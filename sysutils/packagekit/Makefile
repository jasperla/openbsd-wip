# $OpenBSD$

COMMENT =	cross-platform package management framework

DISTNAME =	PackageKit-0.7.0
PKGNAME =	${DISTNAME:L}

SHARED_LIBS +=	packagekit-glib2	0.0 # 14.9
SHARED_LIBS +=	packagekit-qt		0.0 # 14.9
SHARED_LIBS +=	packagekit-qt2		0.0 # 2.0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.packagekit.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.packagekit.org/releases/
EXTRACT_SUFX =	.tar.xz

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

MODULES =		devel/gettext \
			lang/python \
			x11/qt4

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gobject-introspection \
			misc/shared-mime-info \
			sysutils/ggrep \
			textproc/docbook-xsl \
			textproc/p5-XML-Parser

LIB_DEPENDS =		graphics/gdk-pixbuf2 \
			sysutils/polkit \
			x11/gtk+3 \
			x11/qt4,-main \
			x11/qt4,-sqlite

RUN_DEPENDS =		misc/shared-mime-info \
			sysutils/consolekit \
			sysutils/lsof \
			sysutils/polkit

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu autoconf

AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var \
			--disable-device-rebind \
			--disable-cron \
			--disable-command-not-found \
			--disable-browser-plugin \
			--disable-gstreamer-plugin \
			--disable-networkmanager \
			--disable-connman \
			--disable-service-packs \
			--disable-pm-utils \
			--enable-qt \
			--enable-introspection \
			--with-default-backend=openbsd-ports \
			--with-security-framework=polkit \
			--with-packagekit-user=root \
			--with-dbus-sys="${SYSCONFDIR}/dbus-1/"
CONFIGURE_ARGS+=	--enable-openbsd-ports

COPTS +=		-I${LOCALBASE}/include \
			-L${LOCALBASE}/lib

# Modelled after sysutils/consolekit
FAKE_FLAGS =	DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/packagekit/dbus-1 \
		PK_DB_DIR=${TRUEPREFIX}/share/examples/packagekit/db \
		sysconfdir=${TRUEPREFIX}/share/examples/packagekit \
		SYSCONFDIR=${TRUEPREFIX}/share/examples/packagekit

BACKENDS_DIR=		${WRKSRC}/backends/openbsd-ports/

post-extract:
	mkdir ${BACKENDS_DIR}
	cp -r ${FILESDIR}/* ${BACKENDS_DIR}

post-patch:
	@echo "====> Regenerating MOC files"
	@find ${WRKSRC} -name '*.moc' | while read P; do \
		F="$${P##*/}"; \
		(cd "$${P%/*}" && \
		echo moc4 -o "$$F" "$${F%.moc}.h" >&2 && \
		moc4 -o "$$F" "$${F%.moc}.h"); \
	done

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugins/pk-lsof.c
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I m4
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
