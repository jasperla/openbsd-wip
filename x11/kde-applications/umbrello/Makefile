# $OpenBSD$

COMMENT =	UML Modeller
DISTNAME =	umbrello-${VERSION}
CATEGORIES =	x11 productivity

HOMEPAGE =	https://umbrello.kde.org/

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c m xml2
WANTLIB += xslt

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdelibs4support \
		devel/kf5/kdoctools \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/karchive \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kparts \
		devel/kf5/kio \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtwebkit \
		textproc/libxslt \
		textproc/libxml

.include <bsd.port.mk>
