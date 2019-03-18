# $OpenBSD: Makefile,v 1.19 2018/12/14 10:29:16 rsadowski Exp $

COMMENT =	planetarium simulator for KDE

VERSION =	3.1.1
DISTNAME =	kstars-${VERSION}

CATEGORIES =	education

HOMEPAGE =	https://edu.kde.org/kstars/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5NotifyConfig KF5Plotting
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5DataVisualization Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m qt5keychain raw wcs z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kstars/}

MODULES =		devel/kf5 \
			lang/python

MODPY_BUILDDEP =	No

BUILD_DEPENDS +=	devel/gettext-tools \
			devel/kf5/kdoctools \
			x11/qt5/qtquickcontrols \
			math/eigen3 \
			x11/xplanet

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/kf5/kdoctools \
			x11/qt5/qtquickcontrols \
			x11/gtk+3,-guic \
			x11/xplanet

LIB_DEPENDS +=		astro/wcslib \
			devel/kf5/kauth \
			devel/kf5/kconfig \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/knewstuff \
			devel/kf5/knotifications \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/kplotting \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			graphics/libraw \
			math/cfitsio \
			security/qtkeychain,qt5 \
			x11/qt5/qtdatavis3d \
			x11/qt5/qtdeclarative \
			x11/qt5/qtsvg

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_AstrometryNet=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Indy=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
