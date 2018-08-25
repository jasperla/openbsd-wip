# $OpenBSD: Makefile,v 1.20 2017/11/21 00:12:59 naddy Exp $

COMMENT=	helper library for networking and security applications

DISTNAME=	gwenhywfar-4.20.0

SHARED_LIBS +=  gwenhywfar                1.3 # 73.1
SHARED_LIBS +=  gwengui-cpp               0.0 # unknown
SHARED_LIBS +=  gwengui-gtk3              0.0 # 0.0
SHARED_LIBS +=  gwengui-qt5               0.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject crypto dbus-1 drm epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz hogweed iconv icudata icui18n icuuc
WANTLIB += idn2 intl m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-16 pixman-1 png ssl tasn1 unistring
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xshmfence z

# update the "release=XXX" in DISTFILES, not just DISTNAME
MASTER_SITES=	https://www.aquamaniac.de/sites/download/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=01\&release=208\&file=02\&dummy=1}

MODULES=		x11/qt5

BUILD_DEPENDS=		devel/gettext-tools

LIB_DEPENDS=		graphics/png \
			security/libgcrypt \
			security/gnutls \
			x11/gtk+3

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-guis="gtk3 qt5" \
			--enable-ssl \
			--with-qt5-moc="${MODQT5_MOC}" \
			--with-qt5-qmake="${MODQT5_QMAKE}" \
			--with-qt5-uic="${MODQT5_UIC}"

CONFIGURE_ENV +=	QT_LRELEASE="${MODQT5_LRELEASE}" \
			QT_LUPDATE="${LOCALBASE}/bin/lupdate-qt5" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${MODQT5_INCDIR}/QtWidgets"


pre-configure:
	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
	${WRKSRC}/gui/qt5/gwengui-qt5-config.cmake.in \
	${WRKSRC}/gui/cpp/gwengui-cpp-config.cmake.in

.include <bsd.port.mk>
