# $OpenBSD: Makefile,v 1.65 2011/08/23 09:33:03 robert Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		Chromium browser

V=			18.0.994.0
DISTNAME=		chromium-${V}
PKGNAME=		chromium-devel-${V}

CATEGORIES=		www

HOMEPAGE=		http://code.google.com/chromium/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.bz2

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xfixes Xrender Xss bz2 c cairo cups dbus-1
WANTLIB += event execinfo expat fontconfig freetype gconf-2 gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m nspr4 pango-1.0 pangocairo-1.0 plc4
WANTLIB += pthread pthread-stubs pulse speex xml2 xslt
WANTLIB += nss3 nssutil3 smime3 png

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/ \
		http://commondatastorage.googleapis.com/chromium-browser-official/

MODULES=	lang/python

MODULES+=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++
MODGCC4_VERSION=4.6

MODPY_RUNDEP=	No

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+2,-cups \
		x11/gnome/icon-theme
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/flex \
		devel/yasm \
		shells/bash \
		sysutils/flock
LIB_DEPENDS=	devel/libexecinfo \
		archivers/bzip2 \
		devel/gconf2 \
		multimedia/libvpx \
		x11/gnome/libgnome-keyring \
		textproc/libxslt \
		x11/gtk+2 \
		audio/speex \
		audio/pulseaudio \
		print/cups

.include <bsd.own.mk>

# Set BUILDTYPE to Debug (or omit it) for a debug build
BUILDTYPE=	Release
MAKE_ENV=	BUILDTYPE=${BUILDTYPE} V=1

USE_GMAKE=	Yes

REGRESS_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

ALL_TARGET=	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

PSEUDO_FLAVORS=	no_nss
FLAVOR?=

GYP_DEFS=	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=1 \
		-Duse_system_libpng=1 \
		-Duse_system_libxml=1 \
		-Duse_system_speex=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_vpx=1 \
		-Duse_system_yasm=1 \
		-Duse_system_zlib=0 \
		-Ddisable_nacl=1 \
		-Ddisable_sse2=1 \
		-Dlinux_use_tcmalloc=0 \
		-Dpython_ver=2.7 \
		-Denable_webrtc=0 \
		-Duse_kerberos=0 \
		-Duse_pulseaudio=1 \
		-DOS=openbsd

.if ${FLAVOR:L:Mno_nss}
GYP_DEFS+=	-Duse_openssl=1 \
		-Duse_system_ssl=1
.else
LIB_DEPENDS+=	security/nss
WANTLIB+=	nss3 nssutil3
.endif

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	@cp -pR ${WRKSRC}/third_party/libvpx/source/config/linux \
		${WRKSRC}/third_party/libvpx/source/config/openbsd


# gyp_chromium generates all the Makefiles from gyp
do-configure:
	@cd ${WRKSRC} && \
	env -i ${CONFIGURE_ENV} ${MODPY_BIN} build/gyp_chromium -fmake --ignore-environment \
	${GYP_DEFS} \
	"--depth=${WRKSRC}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${INSTALL_SCRIPT} ${FILESDIR}/chrome ${PREFIX}/bin
	@perl -pi -e "s,TRUEPREFIX,${TRUEPREFIX},g" ${PREFIX}/bin/chrome
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${BUILDDIR}/chrome.pak ${PREFIX}/chrome
	${INSTALL_DATA} ${BUILDDIR}/resources.pak ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources
.for f in libffmpegsumo.so mksnapshot protoc
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/chrome
.endfor
.for s in 16 22 24 32 48 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chrome.desktop \
		${PREFIX}/share/applications/chrome.desktop

.include <bsd.port.mk>
