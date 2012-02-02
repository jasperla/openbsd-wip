# $OpenBSD$

# needs LOTS of memory
ONLY_FOR_ARCHS =	amd64

COMMENT =		3D space simulator

DISTNAME =		vegastrike-source-${V}
PKGNAME =		vegastrike-${V}

WANTLIB += GL GLU OgreMain SDL X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender atk-1.0
WANTLIB += boost_python-mt c cairo expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glut gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 iconv intl jpeg m ogg openal
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ util vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm z ${MODPY_WANTLIB}

MODULES =		lang/python
#BUILD_DEPENDS =	???
RUN_DEPENDS =		games/vegastrike/data>=${V}
LIB_DEPENDS =		x11/gtk+2 \
			audio/openal \
			devel/boost \
			audio/libvorbis \
			x11/ogre \
			graphics/freeglut \
			devel/sdl


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-python-version=${MODPY_VERSION} \
			--with-png-libs="${LOCALBASE}/lib" \
			--with-png-inc="${LOCALBASE}/include/libpng" \
			--with-jpeg-libs="${LOCALBASE}/lib" \
			--with-openal-libs="${LOCALBASE}/lib" \
			--with-al-inc="${LOCALBASE}/include" \
			--with-vorbis-libs="${LOCALBASE}/lib" \
			--with-vorbis-inc="${LOCALBASE}/include/vorbis" \
			--with-boost=system \
			--with-data-dir="${TRUEPREFIX}/share/vegastrike"
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			BOOST_CPPFLAGS="-DBOOST_PYTHON_NO_PY_SIGNATURES=1"

.include <bsd.port.mk>
