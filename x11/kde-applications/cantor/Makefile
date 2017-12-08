# $OpenBSD$

COMMENT =	KDE mathematical applications
DISTNAME =	cantor-${VERSION}
CATEGORIES =	editors

SHARED_LIBS +=  cantorlibs                51.0 # 17.08

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui KF5Archive
WANTLIB += KF5Attica KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Parts KF5Pty KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextEditor KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns c cln gfortran luajit-5.1
WANTLIB += m python2.7 qalculate spectre

KDE5 =		Yes

MODULES =	lang/lua \
		lang/python

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/gettext-tools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/gettext \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kguiaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/threadweaver \
		devel/kf5/kpty \
		x11/qt5/qtxmlpatterns \
		lang/gcc/4.9 \
		lang/luajit \
		math/R \
		math/libqalculate \
		print/libspectre \
		x11/kde-applications/analitza

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
