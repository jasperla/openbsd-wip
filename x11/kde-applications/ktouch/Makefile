# $OpenBSD$

COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

KDE5 =		Yes

WANTLIB += ICE Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml SM X11 Xext c m xcb xcb-xkb xkbfile

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
