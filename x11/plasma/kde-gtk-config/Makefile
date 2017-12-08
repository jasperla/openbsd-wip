# $OpenBSD$

COMMENT =		GTK configuration dialogs for KDE5
DISTNAME =		kde-gtk-config-${VERSION}

WANTLIB += KF5Archive KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml Xcursor atk-1.0 c cairo gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtk-x11-2.0 m pango-1.0

MODULES =		lang/python

BUILD_DEPENDS =		devel/kf5/kcmutils
RUN_DEPENDS =		devel/kf5/kcmutils

BUILD_DEPENDS +=	devel/gettext-tools

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kconfigwidgets \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/knewstuff \
			x11/gtk+2 \
			x11/gtk+3

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
