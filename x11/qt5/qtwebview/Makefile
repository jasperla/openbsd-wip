# $OpenBSD$

QT5NAME =		QtWebView
COMMENT-main =		lightweight web viewing component for Qt5

SHARED_LIBS =		Qt5WebView		0.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB =		Qt5Core Qt5Quick Qt5WebKit

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebengine>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
