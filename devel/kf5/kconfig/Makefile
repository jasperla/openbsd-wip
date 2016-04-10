# $OpenBSD$

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		0.0
SHARED_LIBS +=	KF5ConfigGui		0.0

WANTLIB =	Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
