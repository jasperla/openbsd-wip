# $OpenBSD: Makefile.template,v 1.79 2019/03/03 23:18:37 sthen Exp $

USE_WXNEEDED =	Yes
COMMENT =	video editor

V =		19.02.28
DISTNAME =	shotcut-src-${V:S/.//g}
PKGNAME =	shotcut-$V

CATEGORIES =	multimedia

HOMEPAGE =	https://www.shotcut.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Sql
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5WebSockets Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c m mlt mlt++

MASTER_SITES =		https://github.com/mltframework/shotcut/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc base-gcc
MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			devel/sdl2 \
			misc/shared-mime-info \
			x11/gtk+3,-guic
LIB_DEPENDS =		multimedia/mlt \
			x11/qt5/qtmultimedia \
			x11/qt5/qtwebkit \
			x11/qt5/qtx11extras

CONFIGURE_STYLE =	qmake

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/src
WRKSRC =		${WRKDIST}/shotcut

.include <bsd.port.mk>
