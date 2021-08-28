# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

BROKEN=hard depend on libadwaita-1.0-alpha2, that is not in CVS yet.

COMMENT =	GTK+ mastodon client

GH_ACCOUNT =	bleakgrey
GH_PROJECT =	tootle
# Follow HEAD since there are upstream bugs needing to be ironed out
GH_COMMIT =	1f3a8d24e3a31cd9d0e7f77bc26303923a029258
DISTNAME =	${GH_PROJECT}-1.0pl20210726

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 handy-1 json-glib-1.0 soup-2.4

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
		x11/gtk+4 \
		x11/libhandy
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/keyring

# Open image in your favorite image viewer via xdg-mime(1)
RUN_DEPENDS +=	devel/xdg-utils

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/Utils/Host.vala

# Put user friendly command name
post-install:
	ln -s ${TRUEPREFIX}/bin/com.github.bleakgrey.tootle ${PREFIX}/bin/tootle

.include <bsd.port.mk>


