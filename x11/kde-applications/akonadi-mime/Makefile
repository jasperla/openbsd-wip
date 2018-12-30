# $OpenBSD$

COMMENT =	calendar support library
DISTNAME =	akonadi-mime-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5AkonadiMime            0.0 # 5.6

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiPrivate
WANTLIB += KF5AkonadiWidgets KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DBusAddons KF5I18n
WANTLIB += KF5ItemModels KF5KIOCore KF5Mime KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Test Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=devel/boost \
		misc/shared-mime-info

RUN_DEPENDS +=	misc/shared-mime-info

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		textproc/libxslt \
		x11/kde-applications/akonadi \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
