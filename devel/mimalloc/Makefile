COMMENT =	general-purpose allocator with excellent performance

GH_ACCOUNT =	microsoft
GH_PROJECT =	mimalloc
GH_TAGNAME =	v2.0.6

SHARED_LIBS +=	mimalloc	0.0 # 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	pthread

MODULES =	devel/cmake

CONFIGURE_ARGS+=	-DMI_INSTALL_TOPLEVEL=ON

.include <bsd.port.mk>
