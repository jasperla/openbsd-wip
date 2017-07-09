# $OpenBSD: Makefile,v 1.6 2015/08/12 12:33:02 zhuk Exp $

CATEGORIES =	net
COMMENT =	IRC client for KDE
V =		1.7.2
DISTNAME =	konversation-$V
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>
HOMEPAGE =	https://konversation.kde.org/

MASTER_SITES =	${MASTER_SITE_KDE:=stable/konversation/$V/src/}

WANTLIB += KF5Archive KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5Emoticons KF5GlobalAccel
WANTLIB += KF5I18n KF5IconThemes KF5IdleTime KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m qca-qt5

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/kf5 \
			multimedia/phonon \
			lang/python

BUILD_DEPENDS +=	devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			devel/gettext-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/gettext \
			x11/gtk+3,-guic

LIB_DEPENDS +=		security/qca2-qt5 \
			devel/kf5/karchive  \
			devel/kf5/kbookmarks \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kemoticons \
			devel/kf5/ki18n  \
			devel/kf5/kidletime \
			devel/kf5/knotifyconfig \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/solid \
			devel/kf5/kwallet \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/kdbusaddons \
			devel/kf5/knotifications  \
			devel/kf5/kwindowsystem \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/konversation/scripting_support/python/konversation/

.include <bsd.port.mk>
