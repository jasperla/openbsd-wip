# $OpenBSD$

COMMENT =	KDE File Manager
DISTNAME =	eventviews-${VERSION}
CATEGORIES =	editors

KDE5 =		Yes


BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	x11/kde-applications/akonadi

.include <bsd.port.mk>
