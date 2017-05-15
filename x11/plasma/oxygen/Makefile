# $OpenBSD$

COMMENT-main =		KDE 5 Oxygen style components
COMMENT-cursors =	KDE 5 Oxygen style mouse cursors
DISTNAME =		oxygen-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-icons =		oxygen-cursors-${VERSION}
PKG_ARCH-icons =	*

SHARED_LIBS =		oxygenstyle5		0.0
SHARED_LIBS +=		oxygenstyleconfig5	0.0

MULTI_PACKAGES =	-main -cursors

WANTLIB-main =	${WANTLIB}
WANTLIB-main += KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB-main += KF5ConfigWidgets KF5CoreAddons KF5GuiAddons KF5I18n
WANTLIB-main += KF5KCMUtils KF5Service KF5Style KF5WidgetsAddons KF5WindowSystem
WANTLIB-main += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB-main += c kdecorations2 m pthread xcb

WANTLIB-cursors =

BUILD_DEPENDS +=	devel/gettext-tools

LIB_DEPENDS =		devel/kf5/frameworkintegration \
			devel/kf5/kcmutils \
			devel/kf5/kcompletion \
			devel/kf5/kcoreaddons \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			x11/plasma/kdecoration

.include <bsd.port.mk>
