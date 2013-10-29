# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		widgets library for graphics engines

V =			0.8.2
DISTNAME =		cegui-${V}

SHARED_LIBS +=  CEGUIBase-0               0.0 # 3.1
SHARED_LIBS +=  CEGUICommonDialogs-0      0.0 # 3.1
SHARED_LIBS +=  CEGUIIrrlichtRenderer-0   0.0 # 3.1
SHARED_LIBS +=  CEGUINullRenderer-0       0.0 # 3.1
SHARED_LIBS +=  CEGUIOgreRenderer-0       0.0 # 3.1
SHARED_LIBS +=  CEGUIOpenGLRenderer-0     0.0 # 3.1
SHARED_LIBS +=	CEGUIFreeImageImageCodec 0.0
SHARED_LIBS +=	CEGUITGAImageCodec	0.0
SHARED_LIBS +=	CEGUISTBImageCodec	0.0
SHARED_LIBS +=	CEGUIExpatParser	0.0

CATEGORIES =		x11

HOMEPAGE =		http://www.cegui.org.uk/wiki/index.php/Main_Page

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU ICE Irrlicht OIS OgreMain SM X11 Xext boost_system-mt
WANTLIB += c expat freeimage freetype fribidi m pcre pthread tinyxml
WANTLIB += xml2

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=crayzedsgui/}

MODULES =		devel/cmake \
			converters/libiconv \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++
BUILD_DEPENDS =		graphics/glm
LIB_DEPENDS =		x11/ogre \
			x11/irrlicht \
			devel/pcre \
			graphics/glew \
			devel/ois \
			textproc/tinyxml \
			textproc/libxml \
			devel/fribidi

CONFIGURE_ARGS +=	-DCEGUI_BUILD_PYTHON_MODULES=OFF

CFLAGS +=		-pthread -I${X11BASE}/include -I${LOCALBASE}/include

NO_TEST =		Yes

.include <bsd.port.mk>
