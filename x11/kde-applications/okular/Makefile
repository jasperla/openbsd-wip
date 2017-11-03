# $OpenBSD$

COMMENT =	document viewer
DISTNAME =	okular-${VERSION}
CATEGORIES =	textproc

SHARED_LIBS +=  Okular5Core               0.0 # 7.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Archive KF5Auth
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JS KF5JSApi KF5JobWidgets
WANTLIB += KF5KExiv2 KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIONTLM
WANTLIB += KF5KIOWidgets KF5Parts KF5Pty KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5ThreadWeaver KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Svg Qt5TextToSpeech
WANTLIB += Qt5Widgets Qt5Xml c chm djvulibre epub freetype jpeg
WANTLIB += m poppler poppler-qt5 qca-qt5 qmobipocket tiff z

KDE5 =		Yes
KF5_BUILD_PY =	Yes

MODULES =	multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kirigami2 \
		net/libvncserver \
		print/libspectre \
		graphics/qimageblitz \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools \
		net/libvncserver \
		graphics/qimageblitz \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/karchive \
		devel/kf5/kbookmarks \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kio \
		devel/kf5/kiconthemes \
		devel/kf5/kjs \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/kwallet \
		devel/kf5/kwindowsystem \
		devel/kf5/kactivities \
		devel/kf5/threadweaver \
		devel/kf5/kpty \
		devel/kf5/khtml \
		x11/qt5/qtspeech \
		x11/qt5/qtdeclarative \
		security/qca-qt5 \
		devel/chmlib \
		graphics/djvulibre \
		graphics/tiff \
		print/poppler,,-qt5 \
		security/qca-qt5 \
		textproc/ebook-tools \
		x11/kde-applications/libkexiv2 \
		x11/kde-applications/kdegraphics-mobipocket

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
