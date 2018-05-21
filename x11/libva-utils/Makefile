# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	libva-utils is a collection of tests for VA-API

GH_ACCOUNT =	intel
GH_PROJECT =	libva-utils
GH_TAGNAME =	2.1.0

CATEGORIES =	devel x11

# MIT
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =  GL X11 X11-xcb Xdamage Xext Xfixes Xxf86vm drm expat
#WANTLIB += glapi m pthread xcb xcb-dri2 xcb-glx

SEPARATE_BUILD =	Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu autoconf automake

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ARGS =	--disable-wayland \
			--enable-tests

post-patch:
	# sed -i 's/-ldl//' ${WRKSRC}/va/Makefile.am
	cd ${WRKSRC}; \
	touch config.h.in; \
	libtoolize; \
	aclocal; \
	automake --add-missing;

.include <bsd.port.mk>
