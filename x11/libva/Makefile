# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		VA-API support library for Intel chips

GH_ACCOUNT =	intel
GH_PROJECT =	libva
GH_TAGNAME =	2.1.0

SHARED_LIBS =	va		0.0
SHARED_LIBS +=	va-drm		0.0
SHARED_LIBS +=	va-glx		0.0
SHARED_LIBS +=	va-x11		0.0

CATEGORIES =	devel x11

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  GL X11 X11-xcb Xdamage Xext Xfixes Xxf86vm drm expat
WANTLIB += glapi m pthread xcb xcb-dri2 xcb-glx

SEPARATE_BUILD =	Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu autoconf automake

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-patch:
	sed -i 's/-ldl//' ${WRKSRC}/va/Makefile.am
	cd ${WRKSRC}; \
	touch config.h.in; \
	libtoolize; \
	aclocal; \
	automake --add-missing;

.include <bsd.port.mk>
