MODPY_DISTV =	5.15.16
COMMENT-main =	Qt5 for Python
COMMENT-shiboken =	    generator for the PySide2 Qt bindings
PKGNAME-main =	${MODPY_PY_PREFIX}side2-${MODPY_DISTV}
PKGNAME-shiboken =	${MODPY_PY_PREFIX}shiboken2-${MODPY_DISTV}
DISTNAME =	pyside-setup-opensource-src-${MODPY_DISTV}
EXTRACT_SUFX =	.tar.xz
SITES =		https://download.qt.io/official_releases/QtForPython/pyside2/PySide2-${MODPY_DISTV}-src/
CATEGORIES =	devel

MULTI_PACKAGES =	-main -shiboken

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

SHARED_LIBS +=	pyside2.cpython-312       0.0 # 0.0
SHARED_LIBS +=	shiboken2.cpython-312     0.0 # 0.0

# LGPLv3/GPLv2
PERMIT_PACKAGE =	Yes

COMPILER =		ports-clang
MODULES =		devel/cmake lang/clang lang/python x11/qt5
MODPY_PYBUILD =		setuptools

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt53DAnimation Qt53DCore Qt53DExtras
WANTLIB-main += Qt53DInput Qt53DLogic Qt53DRender Qt5Charts Qt5Core
WANTLIB-main += Qt5DataVisualization Qt5Designer Qt5DesignerComponents
WANTLIB-main += Qt5Gamepad Qt5Gui Qt5Help Qt5Location Qt5Multimedia
WANTLIB-main += Qt5MultimediaWidgets Qt5Network Qt5OpenGL Qt5Positioning
WANTLIB-main += Qt5PositioningQuick Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB-main += Qt5Quick Qt5QuickControls2 Qt5QuickWidgets Qt5RemoteObjects
WANTLIB-main += Qt5Script Qt5ScriptTools Qt5Scxml Qt5Sensors Qt5SerialPort
WANTLIB-main += Qt5Sql Qt5Test Qt5TextToSpeech Qt5WebChannel Qt5WebEngine
WANTLIB-main += Qt5WebEngineCore Qt5WebEngineWidgets Qt5WebSockets
WANTLIB-main += Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns c m z
WANTLIB-main += zstd Qt5Svg

# Should this lib be in PLIST-main?
#WANTLIB-main += shiboken2.${MODPY_PYC_MAGIC_TAG}

WANTLIB-shiboken += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml Qt5XmlPatterns
WANTLIB-shiboken += c m xml2 xslt

# It says it wants this, but I don't know how to make stuff happy with it
#WANTLIB-shiboken += clang

LIB_DEPENDS +=	x11/qt5/qtbase \
		x11/qt5/qtxmlpatterns

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			x11/qt5/qt3d \
			x11/qt5/qtcharts \
			x11/qt5/qtdatavis3d \
			x11/qt5/qtgamepad \
			x11/qt5/qtlocation \
			x11/qt5/qtmultimedia \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtremoteobjects \
			x11/qt5/qtscript \
			x11/qt5/qtscxml \
			x11/qt5/qtsensors \
			x11/qt5/qtserialport \
			x11/qt5/qtspeech \
			x11/qt5/qtsvg \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine \
			x11/qt5/qtwebsockets \
			x11/qt5/qtx11extras

LIB_DEPENDS-shiboken +=	${LIB_DEPENDS} \
			textproc/libxslt

RUN_DEPENDS =	graphics/py-opengl

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/py-six \
		devel/py-wheel

CONFIGURE_ARGS +=	-DLLVM_CONFIG="${LOCALBASE}/llvm${MODCLANG_VERSION}/bin/llvm-config"
MAKE_ENV +=		C_INCLUDE_PATH=/usr/X11R6/include

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
