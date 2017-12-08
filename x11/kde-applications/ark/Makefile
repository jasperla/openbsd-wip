# $OpenBSD$

COMMENT =	archiving Tool
DISTNAME =	ark-${VERSION}
CATEGORIES =	archivers

KDE5 =		Yes

SHARED_LIBS +=  kerfuffle                 0.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Parts
WANTLIB += KF5Pty KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml archive c m zip

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		archivers/bzip2 \
		archivers/unrar \
		archivers/p7zip \
		archivers/lzo2 \
		archivers/rzip \
		devel/kf5/kdbusaddons \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		devel/gettext \
		archivers/bzip2 \
		archivers/unrar \
		archivers/p7zip \
		archivers/lzo2 \
		archivers/rzip \
		devel/kf5/kcrash

LIB_DEPENDS =	archivers/libzip \
		archivers/libarchive \
		devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kparts\
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

# for tests
PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
