# $OpenBSD$

COMMENT =	calendar support library
DISTNAME =	akonadi-mime-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5AkonadiMime            0.0 # 5.6

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiWidgets
WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5I18n KF5ItemModels KF5KIOCore
WANTLIB += KF5Mime KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Test Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/boost \
		misc/shared-mime-info

RUN_DEPENDS =	devel/gettext \
		misc/shared-mime-info \
		x11/kde-applications/akonadi

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kdbusaddons \
		devel/kf5/kio \
		devel/kf5/kconfig \
		devel/kf5/kxmlgui \
		textproc/libxslt \
		x11/kde-applications/kmime \
		x11/kde-applications/akonadi

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
