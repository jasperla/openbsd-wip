# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		widgets library for graphics engines

V =			0.7.5
DISTNAME =		CEGUI-${V}
PKGNAME =		cegui-${V}

SHARED_LIBS +=	CEGUIBase		0.0
SHARED_LIBS +=	CEGUIFreeImageImageCodec 0.0
SHARED_LIBS +=	CEGUITGAImageCodec	0.0
SHARED_LIBS +=	CEGUISTBImageCodec	0.0
SHARED_LIBS +=	CEGUIOpenGLRenderer	0.0
SHARED_LIBS +=	CEGUIOgreRenderer	0.0
SHARED_LIBS +=	CEGUIIrrlichtRenderer	0.0
SHARED_LIBS +=	CEGUItoluapp		0.0
SHARED_LIBS +=	CEGUILuaScriptModule	0.0
SHARED_LIBS +=	CEGUIFalagardWRBase	0.0
SHARED_LIBS +=	CEGUIExpatParser	0.0
SHARED_LIBS +=	CEGUISampleHelper    	0.0

CATEGORIES =		x11

HOMEPAGE =		http://www.cegui.org.uk/wiki/index.php/Main_Page

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLEW GLU ICE Irrlicht OIS OgreMain SM X11 Xau Xaw
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xmu Xpm Xt Xxf86vm boost_date_time-mt
WANTLIB += boost_python boost_thread-mt bz2 drm expat freeimage
WANTLIB += freetype glut jpeg m pcre png pthread pthread-stubs
WANTLIB += stdc++ util xcb z zzip ${MODPY_WANTLIB} lua

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=crayzedsgui/}

FLAVORS =		python3
FLAVOR ?=
MODULES =		lang/python \
			lang/lua
LIB_DEPENDS =		x11/ogre \
			x11/irrlicht \
			devel/pcre \
			graphics/freeglut \
			graphics/glew \
			devel/ois

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-version-suffix \
			--disable-libxml \
			--disable-rapidxml \
			--disable-tinyxml \
			--disable-xerces-c
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			am_cv_pathless_PYTHON=python${MODPY_VERSION}

NO_REGRESS =		Yes

.include <bsd.port.mk>
