# manual CI post-25.03
BROKEN-alpha=	sqvm.cpp:394:1: internal compiler error: Segmentation fault
COMMENT=	Code::Blocks C/C++ IDE

#V=		25.03
#
#DISTNAME=	codeblocks_${V}
#PKGNAME=	codeblocks-${V}
#WRKSRC=		${WRKDIR}/codeblocks_${V}
#
#EXTRACT_SUFX=	.tar.xz

DIST_TUPLE =    github jggimi codeblocks 648f62abc974f84c459e09312cf942b1baa0b257 .
SVN_REV = 	13763
SUBST_VARS +=	SVN_REV
V =             25.03pl${SVN_REV}
PKGNAME =       codeblocks-${V}


#SITES=		${SITE_SOURCEFORGE:=codeblocks/Sources/${V}/}

DEBUG_PACKAGES=${BUILD_PACKAGES}

SHARED_LIBS +=  codeblocks           0.1      # 0.1
SHARED_LIBS +=  wxchartctrl          0.1      # 0.1
SHARED_LIBS +=  wxflatnotebook       0.1      # 0.1
SHARED_LIBS +=  wxcustombutton       0.1      # 0.1
SHARED_LIBS +=  wximagepanel         0.1      # 0.1
SHARED_LIBS +=  wxspeedbutton        0.1      # 0.1
SHARED_LIBS +=  wxkwic               0.1      # 0.1
SHARED_LIBS +=  wxtreelist           0.1      # 0.1
SHARED_LIBS +=  wxled                0.1      # 0.1
SHARED_LIBS +=  wxsmithlib           0.1      # 0.1
SHARED_LIBS +=  wxmathplot           0.1      # 0.1

CATEGORIES=	devel x11
DPB_PROPERTIES= parallel

MAINTAINER=	Josh Grosse <josh@jggimi.net>
HOMEPAGE=	https://www.codeblocks.org/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Lerc SDL2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xtst Xxf86vm aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject crypto
WANTLIB += curl curses dbus-1 enchant-2 epoll-shim epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gspell-1 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hunspell-1.7 iconv icudata icuuc intl jpeg lzma m mspack
WANTLIB += nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-32 pcre2-8
WANTLIB += pixman-1 png samplerate secret-1 sndio ssl tiff usbhid
WANTLIB += util wayland-client wayland-cursor wayland-egl wx_baseu-3.2
WANTLIB += wx_baseu_net-3.2 wx_baseu_xml-3.2 wx_gtk3u_aui-3.2
WANTLIB += wx_gtk3u_core-3.2 wx_gtk3u_html-3.2 wx_gtk3u_propgrid-3.2
WANTLIB += wx_gtk3u_qa-3.2 wx_gtk3u_richtext-3.2 wx_gtk3u_xrc-3.2
WANTLIB += xcb xcb-render xcb-shm xkbcommon z zstd

BUILD_DEPENDS=	archivers/zip

LIB_DEPENDS=	archivers/bzip2 \
		textproc/hunspell \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

# C++11
COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE=autoreconf
AUTORECONF=	./bootstrap

CXXFLAGS +=	-std=c++11
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-contrib-plugins=all,-FileManager
CONFIGURE_ARGS += --enable-debug
CONFIGURE_ARGS += --with-boost-libdir=${LOCALBASE}/lib

post-patch:
	cd ${WRKSRC} && \
	${SUBST_CMD} src/plugins/compilergcc/compilergcc.cpp bootstrap && \
	rm update_revision.sh
	echo ending pre-configure

post-install:
	find ${PREFIX}/share/codeblocks -type f -perm 444 \
		-exec chmod 644 '{}' +
	rm ${PREFIX}/lib/codeblocks/plugins/*.{a,la}

.include <bsd.port.mk>
