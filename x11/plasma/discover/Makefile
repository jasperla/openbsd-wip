# $OpenBSD$

COMMENT =		KDE software center components
DISTNAME =		discover-${VERSION}

SHARED_LIBS =		DiscoverCommon		0.0
SHARED_LIBS +=		DiscoverNotifiers	0.0

WANTLIB =  KF5Attica KF5Auth KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5Declarative KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5NewStuff KF5Notifications
WANTLIB += KF5Package KF5Service KF5Solid KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Widgets Qt5Xml c m pthread

# it looks like some of those aren't really needed, but some dependences
# will pick up them anyway, so just add a record for safety
BUILD_DEPENDS =		devel/kf5/karchive \
			devel/kf5/ktextwidgets \
			devel/kf5/kwallet \
			devel/kf5/plasma-framework \
			x11/polkit-qt

RUN_DEPENDS =		devel/kf5/karchive \
			devel/kf5/ktextwidgets \
			devel/kf5/kwallet \
			devel/kf5/plasma-framework \
			x11/polkit-qt

LIB_DEPENDS =		devel/kf5/attica \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/knewstuff \
			devel/kf5/knotifications \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons \
			devel/kf5/solid
			# TODO devel/kirigami

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QApt=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_AkabeiClient=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_AppstreamQt=Yes \
			-DINSTALL_EXPORTER=Yes

.include <bsd.port.mk>
