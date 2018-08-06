# $OpenBSD$

COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KF5CalendarUtils          0.0 # 5.6

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5CalendarCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5IdentityManagement KF5PimTextEdit
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		x11/kde-applications/kcalcore \
		devel/kf5/kiconthemes \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/kidentitymanagement \
		x11/grantlee-qt5 \
		textproc/libical

.include <bsd.port.mk>
