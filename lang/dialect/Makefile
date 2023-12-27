COMMENT =		translation app for GNOME
V =			2.2.0
DIST_TUPLE =		github	dialect-app	dialect	${V}	. \
			github	dialect-app	po	${V}	po
CATEGORIES =		lang x11 textproc

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/meson \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/glib2 \
			devel/gobject-introspection \
			devel/libsoup3 \
			devel/py-gobject3${MODPY_FLAVOR} \
			multimedia/gstreamer1/core \
			x11/blueprint-compiler \
			x11/gnome/libadwaita \
			x11/gtk+4

RUN_DEPENDS =		devel/glib2 \
			devel/gobject-introspection \
			devel/libsoup3 \
			devel/py-gobject3${MODPY_FLAVOR} \
			lang/py-gTTS${MODPY_FLAVOR} \
			multimedia/gstreamer1/core \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/libadwaita \
			x11/gtk+4

PORTHOME =		${WRKDIR}

PNG_URL =		https://raw.githubusercontent.com/dialect-app/dialect/main/

# XXX if 'test' runs before 'fake', the package will contain WRKSRC paths
pre-test:
	# avoid fetching files
	sed -i 's,${PNG_URL},file://${WRKSRC}/,' \
		${WRKBUILD}/data/app.drey.Dialect.metainfo.xml

.include <bsd.port.mk>
