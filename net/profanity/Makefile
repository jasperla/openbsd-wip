# $OpenBSD: Makefile,v 1.3 2016/04/26 09:35:38 sthen Exp $

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.5.0
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.profanity.im/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender assuan c crypto curl ereadline expat
WANTLIB += ffi fontconfig freetype gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpgme gthread-2.0 iconv idn intl
WANTLIB += m ncursesw nghttp2 otr pcre pixman-1 pthread pthread-stubs
WANTLIB += ssl strophe xcb xcb-render xcb-shm z

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS +=	net/curl \
		devel/readline>=6.1p2 \
		devel/glib2 \
		net/libstrophe>=0.9.1 \
		security/gpgme \
		security/libotr \
		sysutils/e2fsprogs \
		www/nghttp2

TEST_DEPENDS =	devel/cmocka

CONFIGURE_STYLE = autoconf
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-xscreensaver=no \
			--enable-notifications \
			--enable-otr

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

# there is no stub_ui.h and is not needed
post-patch:
	find ${WRKSRC} -type f -name "*.c" \
		-exec sed -i '/stub\_ui.h/d' "{}" \;
	sed -i s,/usr/local,${LOCALBASE}, ${WRKSRC}/configure.ac

.include <bsd.port.mk>
