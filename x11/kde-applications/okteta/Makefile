# $OpenBSD$

COMMENT =	Hex Editor
DISTNAME =	okteta-${VERSION}
CATEGORIES =	editors

KDE5 =		Yes

SHARED_LIBS +=  kasten3controllers        0.0 # 0.3
SHARED_LIBS +=  kasten3core               0.0 # 0.3
SHARED_LIBS +=  kasten3gui                0.0 # 0.3
SHARED_LIBS +=  kasten3okteta1controllers 0.0 # 0.3
SHARED_LIBS +=  kasten3okteta1core        0.0 # 0.3
SHARED_LIBS +=  kasten3okteta1gui         0.0 # 0.3
SHARED_LIBS +=  okteta2core               0.0 # 0.9
SHARED_LIBS +=  okteta2gui                0.0 # 0.9

WANTLIB += KF5Attica KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Script
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/kcmutils \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
