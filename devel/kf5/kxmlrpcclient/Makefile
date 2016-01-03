# $OpenBSD$

COMMENT =	KDE XML-RPC client
DISTNAME =	kxmlrpcclient-${VERSION}

SHARED_LIBS =	KF5XmlRpcClient		0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5I18n KF5KIOCore KF5Service
WANTLIB += Qt5Core Qt5Xml m

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kio

.include <bsd.port.mk>
