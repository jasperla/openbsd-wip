# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		VA-API user mode driver for Intel GEN Graphics family

GH_ACCOUNT =	intel
GH_PROJECT =	intel-vaapi-driver
GH_TAGNAME =	2.1.0

#SHARED_LIBS =	va		0.0

CATEGORIES =	devel x11

# MIT
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =  GL X11 X11-xcb Xdamage Xext Xfixes Xxf86vm drm expat
#WANTLIB += glapi m pthread xcb xcb-dri2 xcb-glx

LIB_DEPENDS =		x11/libva

SEPARATE_BUILD =	Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu autoconf automake
CONFIGURE_ARGS =	--enable-tests

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

TEST_IS_INTERACTIVE =	X11
#TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_ENV =		LIBVA_MESSAGING_LEVEL=2

post-patch:
	cd ${WRKSRC}; \
	touch src/config.h.in; \
	libtoolize; \
	aclocal; \
	automake --add-missing;

.include <bsd.port.mk>
