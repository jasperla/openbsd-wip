# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 07:45:47 rsadowski Exp $

COMMENT =	multi-protocol instant messenger for KDE
DISTNAME =	kopete-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	https://www.kde.org/applications/internet/kopete/

SHARED_LIBS +=  kopete                    0.0 # 1.0
SHARED_LIBS +=  kopete_oscar              0.0 # 1.0
SHARED_LIBS +=  kopete_otr_shared         0.0 # 1.0
SHARED_LIBS +=  kopete_videodevice        0.0 # 1.0
SHARED_LIBS +=  kopeteaddaccountwizard    0.0 # 1.0
SHARED_LIBS +=  kopetechatwindow_shared   0.0 # 1.0
SHARED_LIBS +=  kopetecontactlist         0.0 # 1.0
SHARED_LIBS +=  kopeteidentity            0.0 # 1.0
SHARED_LIBS +=  kopeteprivacy             0.0 # 1.0
SHARED_LIBS +=  kopetestatusmenu          0.0 # 1.0
SHARED_LIBS +=  oscar                     0.0 # 1.0

KDE5 =		Yes

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

RUN_DEPENDS +=	misc/shared-mime-info \
		x11/kde-applications/kio-extras

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/jsoncpp \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kemoticons \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/libidn \
		graphics/jasper \
		graphics/qimageblitz \
		net/libgadu \
		security/libotr \
		security/libsrtp \
		security/qca-qt5 \
		textproc/libxml \
		x11/kde-applications/kcontacts \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kleopatra \
		x11/kde-applications/libkleo

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2=Yes

.include <bsd.port.mk>
