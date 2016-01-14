# $OpenBSD$

COMMENT =		Reiner SCT cyberJack card reader pcsc driver

DISTNAME =		pcsc-cyberjack-3.99.5final.SP08

SHARED_LIBS =		ifd-cyberjack		0.0 # 6.0

CATEGORIES =		security

HOMEPAGE =		https://www.reiner-sct.com/support/download/treiber-und-software/cyberjack/chip-linux.html

# LGPL2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FOX-1.6 GL GLU X11 X11-xcb Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xrandr Xrender Xxf86vm bz2 c drm expat fontconfig
WANTLIB += freetype glapi iconv jpeg lzma m pcsclite png pthread
WANTLIB += pthread-stubs stdc++ tiff usb-1.0 xcb xcb-dri2 xcb-glx
WANTLIB += xml2 z

MASTER_SITES =		http://support.reiner-sct.de/downloads/LINUX/V3.99.5_SP08/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/libtool
LIB_DEPENDS =		devel/fox \
			security/pcsc-lite \
			textproc/libxml

MAKE_FLAGS =		CPPFLAGS=-I${LOCALBASE}/include

CONFIGURE_STYLE =	gnu autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-release

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.10

post-patch:
	cd ${WRKSRC} && \
		libtoolize -f --copy && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		aclocal -I m4

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		automake --add-missing --copy

post-install:
	rm ${PREFIX}/lib/cyberjack/pcscd_init.diff
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pcsc-cyberjack
	mv ${WRKINST}/etc/cyberjack.conf.default ${PREFIX}/share/examples/pcsc-cyberjack

.include <bsd.port.mk>
