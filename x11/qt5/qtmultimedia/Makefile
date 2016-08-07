# $OpenBSD$

QT5NAME =		QtMultimedia
COMMENT-main =		Qt5 multimedia components

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =	Qt5Multimedia		2.0
SHARED_LIBS +=	Qt5MultimediaQuick_p	2.0
SHARED_LIBS +=  Qt5MultimediaWidgets	2.0
SHARED_LIBS +=  fftreal			2.0
SHARED_LIBS +=  qgsttools_p		2.0

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Qml Qt5Quick
WANTLIB-main += Qt5Widgets glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0
WANTLIB-main += gstbase-1.0 gstpbutils-1.0 gstphotography-1.0 gstreamer-1.0
WANTLIB-main += gstvideo-1.0 intl m openal pthread pulse

WANTLIB-examples =  ${WANTLIB}
WANTLIB-examples += GL Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB-examples += Qt5Network Qt5OpenGL Qt5Qml Qt5Quick Qt5Widgets Qt5Xml
WANTLIB-examples += c m pthread

BUILD_DEPENDS =		multimedia/gstreamer1/mm \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad

RUN_DEPENDS-main =	multimedia/gstreamer1/mm \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad

# no_examples to avoid cyclic dependency

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/openal \
			audio/pulseaudio \
			multimedia/gstreamer1/core \
			x11/qt5/qtdeclarative,no_examples>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS-examples =	${LIB_DEPENDS} \
			x11/qt5/qtdeclarative,no_examples>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_ARGS =		GST_VERSION=1.0

.include <bsd.port.mk>
