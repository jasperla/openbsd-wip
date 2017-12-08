# $OpenBSD$

COMMENT =		KDE5 internal components for managing running processes
DISTNAME =		libksysguard-${VERSION}

# start from 60.0 as those are present in KDE4 as well
SHARED_LIBS =	ksgrd			60.0 # 5.5
SHARED_LIBS +=	ksignalplotter		60.0 # 5.5
SHARED_LIBS +=	lsofui			60.0 # 5.5
SHARED_LIBS +=	processcore		60.0 # 5.5
SHARED_LIBS +=	processui		60.0 # 5.5

WANTLIB += ICE KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5Package KF5Plasma KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 XRes Xext c kvm m z

BUILD_DEPENDS =		devel/gettext-tools

RUN_DEPENDS =		x11/dbus,-suid \
			devel/gettext

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/kconfig \
			devel/kf5/ki18n \
			devel/kf5/kwindowsystem \
			devel/kf5/kcompletion \
			devel/kf5/kauth \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kiconthemes \
			devel/kf5/kconfigwidgets \
			devel/kf5/kservice \
			devel/kf5/plasma-framework

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

KDE4_L10N_CONFLICT =	Yes

.include <bsd.port.mk>
