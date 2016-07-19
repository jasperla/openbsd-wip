# $OpenBSD$

COMMENT-main =		C++ general-purpose toolkit, meta-package
COMMENT-examples =	examples for Qt5, meta-package
COMMENT-html =		offline HTML documentation for Qt5, meta-package
COMMENT-qch =		offline QCH documentation for Qt5, meta-package

PKGNAME =		qt5-${MODQT5_VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-examples =	qt5-examples-${MODQT5_VERSION}
PKGNAME-html =		qt5-html-${MODQT5_VERSION}
PKGNAME-qch =		qt5-qch-${MODQT5_VERSION}

MULTI_PACKAGES =	-main -examples -html -qch

MODULES =		x11/qt5
MODQT5_USE_GCC4_MODULE =No

WANTLIB-main =
LIB_DEPENDS-main =
RUN_DEPENDS-main =	x11/qt5/qtbase,-main \
			x11/qt5/qttools,-main

WANTLIB-examples =
LIB_DEPENDS-examples =
RUN_DEPENDS-examples =	x11/qt5/qtbase,-examples \
			x11/qt5/qttools,-examples

WANTLIB-html =
LIB_DEPENDS-html =
RUN_DEPENDS-html =	x11/qt5/qtbase,-html

WANTLIB-qch =
LIB_DEPENDS-qch =
RUN_DEPENDS-qch =	x11/qt5/qtbase,-qch

.include <bsd.port.mk>
