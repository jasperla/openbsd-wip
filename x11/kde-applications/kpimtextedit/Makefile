# $OpenBSD$

COMMENT =	textedit with PIM-specific features
DISTNAME =	kpimtextedit-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5PimTextEdit            0.0 # 5.6

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_TextDocument KF5Auth KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Emoticons KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5SonnetCore KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5TextToSpeech Qt5Widgets
WANTLIB += Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/ktextwidgets \
		devel/kf5/kdesignerplugin \
		x11/qt5/qttools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/ktextwidgets \
		devel/kf5/kdesignerplugin \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kemoticons \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/qt5/qtspeech \
		x11/grantlee-qt5

.include <bsd.port.mk>
