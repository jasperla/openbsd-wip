# $OpenBSD$

COMMENT =	Kio slave for accessing audio CDs
DISTNAME =	audiocd-kio-${VERSION}
CATEGORIES =	devel audio

KDE5 =		Yes

SHARED_LIBS +=  audiocdplugins            0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} FLAC KF5Auth KF5Bookmarks KF5Cddb
WANTLIB += KF5Codecs KF5CompactDisc KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml cdda_interface cdda_paranoia m ogg
WANTLIB += phonon4qt5 vorbis vorbisenc vorbisfile


MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdbusaddons \
		devel/kf5/kitemviews \
		devel/kf5/kglobalaccel \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash \
		devel/kf5/ktextwidgets

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kbookmarks \
		devel/kf5/kcrash

LIB_DEPENDS =	x11/kde-applications/libkcddb \
		x11/kde-applications/libkcompactdisc \
		devel/kf5/kparts \
		devel/kf5/kunitconversion \
		devel/kf5/kdelibs4support \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/karchive \
		devel/kf5/kdnssd \
		devel/kf5/kdeclarative \
		devel/kf5/kguiaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kxmlgui \
		audio/openal

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
