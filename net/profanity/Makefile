# $OpenBSD$

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.4.7
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += assuan c curl ereadline glib-2.0 gpg-error gpgme ncursesw
WANTLIB += otr pthread strophe

MASTER_SITES =	http://www.profanity.im/

MODULES =	devel/gettext

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE)DEPENDS}

LIB_DEPENDS =	devel/libnotify \
		devel/readline>=6.1p2 \
		devel/cmocka \
		devel/uuid \
		net/curl \
		net/libstrophe \
		security/libotr \
		security/gpgme \
		security/libgpg-error

CONFIGURE_STYLE = autoconf
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS = --with-xscreensaver=no

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

NO_TEST =	Yes

.include <bsd.port.mk>
