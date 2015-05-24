# $OpenBSD$
COMMENT =		libv4l userspace library

DISTNAME =		v4l-utils-1.6.3

SHARED_LIBS +=  v4l1                      0.0 # 0.0
SHARED_LIBS +=  v4l2                      0.0 # 0.0
SHARED_LIBS +=  v4l2rds                   0.0 # 0.0
SHARED_LIBS +=  v4lconvert                0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://git.linuxtv.org/v4l-utils.git

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE QtCore QtGui QtOpenGL SM X11 X11-xcb Xau Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrender Xxf86vm c drm
WANTLIB += fontconfig freetype glapi jpeg m pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-dri2 xcb-glx

MASTER_SITES =		http://linuxtv.org/downloads/v4l-utils/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/argp-standalone
LIB_DEPENDS =		graphics/jpeg \
			x11/qt4

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-libdvbv5 \
			--enable-qv4l2 \
			--enable-v4l-utils
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig"

post-extract:
	rm -R ${WRKSRC}/contrib/freebsd/include

.include <bsd.port.mk>
