# $OpenBSD$

COMMENT =	library for managing identitites
DISTNAME =	kidentitymanagement-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KF5IdentityManagement     0.0 # 5.6

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5PimTextEdit
WANTLIB += KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kiconthemes \
		devel/kf5/ktextwidgets

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kiconthemes \
		devel/kf5/ktextwidgets

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcoreaddons \
		devel/kf5/kcompletion \
		devel/kf5/kxmlgui \
		devel/kf5/kio \
		devel/kf5/kconfig \
		devel/kf5/kcodecs \
		x11/kde-applications/kpimtextedit


.include <bsd.port.mk>
