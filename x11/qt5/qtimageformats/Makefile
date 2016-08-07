# $OpenBSD$

QT5NAME =		QtImageFormats
COMMENT-main =		Qt5 multimedia components

MULTI_PACKAGES =	-main -qch -html

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui jasper m mng pthread tiff webp

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
