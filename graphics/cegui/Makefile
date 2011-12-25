# $OpenBSD$

COMMENT =		library providing windowing and widgets for graphics APIs

DISTNAME =		CEGUI-0.6.2
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=		CEGUIBase 		0.0 #3.0
SHARED_LIBS +=		CEGUIFalagardWRBase 	0.0 #3.0
SHARED_LIBS +=		CEGUILuaScriptModule 	0.0 #3.0
SHARED_LIBS +=		CEGUIOpenGLRenderer	0.0 #1.0
SHARED_LIBS +=		CEGUITGAImageCodec	0.0 #0.0
SHARED_LIBS +=		CEGUITinyXMLParser 	0.0 #0.0
SHARED_LIBS +=		CEGUItoluapp 		0.0 #3.0

CATEGORIES =		graphics devel

HOMEPAGE =		http://www.cegui.org.uk

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU ICE SM X11 Xau Xdmcp Xext Xi Xmu \
			Xt c freetype m pthread pthread-stubs xcb z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=crayzedsgui/}

LIB_DEPENDS =		graphics/glut \
					lang/lua \
					devel/pcre

USE_X11 =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	--disable-expat \
			--disable-external-glew \
			--disable-freeimage \
			--disable-irrlicht-renderer \
			--disable-libxml \
			--enable-toluacegui \
			--disable-xerces-c \
			${CONFIGURE_SHARED}

#MAKE_ENV =
CONFIGURE_ENV += 	CPPLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm -pthread -lXi -lXmu" 

post-patch:
# Find out what prevents to fing GL/glu/h and GL/gl.h when building in Samples
	@perl -pi -e 's|Samples||g' ${WRKSRC}/Makefile.in
#
	@perl -pi -e 's|-lpthread|-pthread|g' ${WRKSRC}/configure

.include <bsd.port.mk>
