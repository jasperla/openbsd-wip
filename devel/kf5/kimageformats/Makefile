# $OpenBSD$

COMMENT =		KDE plugins for QImage supporting extra file formats
DISTNAME =		kimageformats-${VERSION}

WANTLIB =	KF5Archive Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB +=	Half Iex IlmImf IlmThread Imath m

LIB_DEPENDS =		devel/kf5/karchive \
			graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
