# $OpenBSD$

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.4.0
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xss c crypto curl expat gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 ncursesw notify otr pthread ssl

MASTER_SITES =	http://www.profanity.im/

MODULES =	devel/gettext

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE)DEPENDS}

LIB_DEPENDS =	devel/libnotify \
		net/curl \
		net/libstrophe \
		security/libotr

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

# We lack a port of cmocka, so no tests.
NO_TEST =	Yes

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
