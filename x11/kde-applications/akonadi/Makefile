# $OpenBSD$

COMMENT =	PIM Storage Service
DISTNAME =	akonadi-${VERSION}
CATEGORIES =	database

SHARED_LIBS +=  KF5AkonadiAgentBase       0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiCore            0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiPrivate         0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiWidgets         0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiXml             0.0 # 5.6

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5IconThemes KF5ItemModels
WANTLIB += KF5ItemViews KF5KIOCore KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Widgets Qt5Xml c m sqlite3
WANTLIB += xml2

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdesignerplugin \
		textproc/libxslt \
		devel/boost \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdesignerplugin \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		databases/sqlite \
		devel/gettext

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons  \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/kcrash \
		textproc/libxml \
		databases/sqlite3

CONFIGURE_ARGS =	-DDATABASE_BACKEND:String=SQLITE

PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
