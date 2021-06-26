# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT =	GTK+ mastodon client

GH_ACCOUNT =	bleakgrey
GH_PROJECT =	tootle
# Follow HEAD since there are upstream bugs needing to be ironed out
GH_COMMIT =	f5a823ba9705ab05e53499478c4be4f975d24a9f
DISTNAME =	${GH_PROJECT}-1.0.20210214

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 handy-1 json-glib-1.0 soup-2.4

MODULES =	devel/dconf \
		devel/meson \
		x11/gnome

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala>=0.48
LIB_DEPENDS =	devel/glib2>=2.30.0 \
		devel/json-glib>=1.4.4 \
		devel/libgee>=0.8.5 \
		devel/libsoup>=2.64 \
		x11/gtk+3>=3.22.0 \
		x11/libhandy>=1.0.0
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/keyring \
		x11/gtk+3,-guic

# Open image in your favorite image viewer via xdg-mime(1)
RUN_DEPENDS +=	devel/xdg-utils

# For patches/patch-src_Desktop_vala
pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/Desktop.vala

# Put user friendly command name
post-install:
	ln -s ${TRUEPREFIX}/bin/com.github.bleakgrey.tootle ${PREFIX}/bin/tootle

.include <bsd.port.mk>


