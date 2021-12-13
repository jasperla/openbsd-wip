# $OpenBSD: $

# upstream officially says so, just like net/tdlib
ONLY_FOR_ARCHS =	${LE_ARCHS}

COMMENT =		Official Telegram Desktop messenger
V =			3.3.0
DISTNAME =		tdesktop-${V}-full
PKGNAME =		tdesktop-${V}
CATEGORIES =		net

HOMEPAGE =		https://desktop.telegram.org
MASTER_SITES =		https://github.com/telegramdesktop/tdesktop/releases/download/v${V}/

# ${WRKSRC}/Telegram/ThirdParty/hunspell/tests/suggestiontest/Makefile.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			lang/python \
			x11/qt5
MODPY_RUNDEP =		No
# XXX we have x11/qt6 but it is too new
CONFIGURE_ARGS +=	-DDESKTOP_APP_QT6=OFF

LIB_DEPENDS =		audio/rnnoise \
			audio/openal \
			audio/pulseaudio \
			graphics/ffmpeg \
			graphics/jpeg \
			net/tg_owt

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# C++17
COMPILER =		base-clang ports-gcc

# XXX use limited TEST ONLY credentials and register at
# https://core.telegram.org/api/obtaining_api_id once porting is done
# -DTDESKTOP_API_ID=foo -DTDESKTOP_API_HASH=bar
CONFIGURE_ARGS +=	-DTDESKTOP_API_TEST=ON

# OpenBSD is detected as Linux, disable unported/unwanted components
CONFIGURE_ARGS +=	-DLIBTGVOIP_DISABLE_ALSA=ON \
			-DDESKTOP_APP_DISABLE_WAYLAND_INTEGRATION=ON

.include <bsd.port.mk>
