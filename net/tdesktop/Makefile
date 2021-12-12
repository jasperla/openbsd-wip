# $OpenBSD: $

# upstream officially says so, just like net/tdlib
ONLY_FOR_ARCHS =	${LE_ARCHS}

COMMENT =		Telegram Desktop messaging app
V =			3.2.5
DISTNAME =		tdesktop-${V}-full
PKGNAME =		tdesktop-${V}
CATEGORIES =		net

HOMEPAGE =		https://desktop.telegram.org
MASTER_SITES =		https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		tg_owt

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		audio/rnnoise \
			net/tg_owt

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# C++17
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	\
			-DDESKTOP_APP_SPECIAL_TARGET="" \
			-Ddisable_autoupdate=1 \
			-DDESKTOP_APP_USE_PACKAGED=ON \
			-DDESKTOP_APP_DISABLE_CRASH_REPORTS=ON \
			-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON \
			-DDESKTOP_APP_QT6=OFF \
			-DDESKTOP_APP_USED_PACKAGED_FONTS=OFF \


.include <bsd.port.mk>
