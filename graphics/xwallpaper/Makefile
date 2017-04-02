# $OpenBSD:
#
COMMENT =	X wallpaper utility

GH_ACCOUNT =	stoeckmann
GH_PROJECT =	xwallpaper
GH_TAGNAME =	v0.2.0

CATEGORIES =	graphics

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xpm c pixman-1 pthread-stubs xcb xcb-image xcb-randr
WANTLIB += xcb-shm xcb-util

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --install

.include <bsd.port.mk>
