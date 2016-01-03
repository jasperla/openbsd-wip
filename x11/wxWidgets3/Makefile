# $OpenBSD$

SHARED_ONLY =	Yes

COMMENT =	C++ cross-platform GUI toolkit

V =		3.0.2
DISTNAME =	wxWidgets-${V}

CATEGORIES =	x11

SHARED_LIBS +=  wx_baseu-3.0              0.0 # 0.0
SHARED_LIBS +=  wx_baseu_net-3.0          0.0 # 0.0
SHARED_LIBS +=  wx_baseu_xml-3.0          0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_adv-3.0          0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_aui-3.0          0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_core-3.0         0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_gl-3.0           0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_html-3.0         0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_media-3.0        0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_propgrid-3.0     0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_qa-3.0           0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_ribbon-3.0       0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_richtext-3.0     0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_stc-3.0          0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_webview-3.0      0.0 # 0.0
SHARED_LIBS +=  wx_gtk2u_xrc-3.0          0.0 # 0.0

HOMEPAGE =	http://www.wxwidgets.org/

# wxWindows (modified LGPL)
# http://www.wxwidgets.org/about/licence/
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wxwindows/}
EXTRACT_SUFX =		.zip
WRKDIST =		${WRKDIR}

MODULES	=		devel/gettext

WANTLIB += GL GLU SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += jpeg m notify pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB += pthread soup-2.4 stdc++ tiff webkitgtk-1.0 xml2 z

BUILD_DEPENDS =		devel/cppunit
LIB_DEPENDS =		devel/libnotify \
			devel/sdl \
			multimedia/gstreamer-0.10/plugins-base \
			x11/gtk+2 \
			www/webkit
TEST_DEPENDS =		${BUILD_PKGPATH}>=${V}

USE_GMAKE =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS =--disable-backtrace \
		--enable-mediactrl \
		--enable-unicode \
		--with-opengl \
		--with-sdl \
		--enable-graphics_ctx
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		WXCONFIG_CPPFLAGS="-I${X11BASE}/include"

# XXX: When used in conjunction with PIE, symbol versioning triggers
# weird linking problems in dependent ports
CONFIGURE_ENV += wx_cv_version_script=no

.ifdef DEBUG
CONFIGURE_ARGS += --enable-debug
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

# resolve conflict with x11/wxWidgets (v2) and fix DOS linebreaks
post-install:
	mv ${PREFIX}/bin/wx-config ${PREFIX}/bin/wx-config-3.0
	rm ${PREFIX}/bin/wxrc
	perl -pi -e 's/\r$$//' ${PREFIX}/lib/wx/config/gtk2-unicode-3.0

do-test:
	@cd ${WRKSRC}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && ./test

.include <bsd.port.mk>
