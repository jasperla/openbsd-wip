# $OpenBSD$

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.4.7
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.profanity.im/

WANTLIB += assuan c curl ereadline glib-2.0 gpg-error gpgme ncursesw
WANTLIB += otr pthread strophe uuid intl

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE)DEPENDS} \
		devel/gettext-tools


LIB_DEPENDS +=	security/gpgme \
		security/libotr \
		sysutils/e2fsprogs \
		net/libstrophe \
		net/curl \
		devel/readline>=6.1p2 \
		devel/cmocka \
		devel/libnotify

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

.include <bsd.port.mk>
