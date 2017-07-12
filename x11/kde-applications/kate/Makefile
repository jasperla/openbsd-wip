# $OpenBSD$

COMMENT =	KDE advanced text editor
DISTNAME =	kate-${VERSION}
CATEGORIES =	editors

KDE5 =		Yes

WANTLIB += KF5Activities KF5Attica KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Package KF5Parts KF5Plasma KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextEditor KF5TextWidgets KF5ThreadWeaver
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Sql
WANTLIB += Qt5Widgets Qt5Xml c git2 m

<<<<<<< Updated upstream
MODULES +=	lang/python

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/kf5/syntax-highlighting \
		devel/gettext-tools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kinit \
		devel/kf5/syntax-highlighting \
		devel/gettext \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kwallet \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/threadweaver \
		devel/libgit2/libgit2

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0063=NEW

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

#The following tests FAILED:
#          2 - kateapp-session_manager_test (Failed)

.include <bsd.port.mk>
