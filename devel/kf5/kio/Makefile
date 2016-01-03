# $OpenBSD$

# XXX has some internal dependency problems, look for kpasswdserver.json

COMMENT =	network transparent access to files and data in KDE
DISTNAME =	kio-${VERSION}

SHARED_LIBS =	KF5KIOCore		0.0 # 5.12
SHARED_LIBS +=	KF5KIOFileWidgets	0.0 # 5.12
SHARED_LIBS +=	KF5KIONTLM		0.0 # 5.12
SHARED_LIBS +=	KF5KIOWidgets		0.0 # 5.12

WANTLIB =  KF5Archive KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += c exslt m pthread xml2 xslt

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/kf5/kdoctools
RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kbookmarks \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		textproc/libxml \
		textproc/libxslt

# GSSAPI support requires fixing (rewriting?) FindGSSAPI.cmake
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_ACL=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_GSSAPI=Yes

.include <bsd.port.mk>
