# $OpenBSD$

COMMENT=		flexible communications framework, xmpp component

DISTNAME=		telepathy-rakia-0.8.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-rakia/}

WANTLIB += c crypto dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl pcre pthread sofia-sip-ua sofia-sip-ua-glib
WANTLIB += ssl telepathy-glib z

MODULES=		devel/gettext

RUN_DEPENDS +=		x11/gtk+3
LIB_DEPENDS +=		telephony/sofia-sip \
			net/telepathy/telepathy-glib

.include <bsd.port.mk>
