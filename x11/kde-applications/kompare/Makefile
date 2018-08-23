# $OpenBSD$

COMMENT =	file compare utility
DISTNAME =	kompare-${VERSION}
CATEGORIES =	textproc devel

KDE5 =		Yes

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
