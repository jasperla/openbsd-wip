# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	GTK+ mastodon client

GH_ACCOUNT =	bleakgrey
GH_PROJECT =	tootle
# Follow HEAD since there are upstream bugs needing to be ironed out
GH_COMMIT =	02f918d6377f78481de1b9d9485bfb4fa183aaaa
DISTNAME =	${GH_PROJECT}-1.0pl20210909

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 json-glib-1.0 pango-1.0
WANTLIB += secret-1 soup-2.4 xml2

MODULES =	devel/dconf \
		devel/meson \
		x11/gnome

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala
LIB_DEPENDS =	devel/glib2 \
		devel/json-glib \
		devel/libgee \
		devel/libsoup \
		textproc/libxml \
		x11/gnome/libadwaita \
		x11/gnome/libsecret \
		x11/gtk+4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/keyring

# Open images in your favorite image viewer via xdg-mime(1)
RUN_DEPENDS +=	devel/xdg-utils

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/Utils/Host.vala

# Put user friendly command name
post-install:
	ln -s ${TRUEPREFIX}/bin/com.github.bleakgrey.tootle ${PREFIX}/bin/tootle

.include <bsd.port.mk>


