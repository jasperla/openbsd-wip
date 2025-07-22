COMMENT =	Adjust the color temperature of your screen.

VERSION = 	2.0.11
DISTNAME =	gammastep-${COMMIT}
PKGNAME = 	gammastep-${VERSION}


# Better to retrieve from commit
COMMIT = 60f3fe757a9a218379b10e991486f91c10c5a215

CATEGORIES =	misc

HOMEPAGE =	https://gitlab.com/chinstrap/gammastep
MAINTAINER =	bilaliscarioth <bilal@iscarioth.org>


# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xxf86vm c drm m pthread xcb xcb-randr
WANTLIB += z

SITES = https://gitlab.com/chinstrap/gammastep/-/archive/${COMMIT}/

BUILD_DEPENDS +=	devel/gettext,-tools

LIB_DEPENDS += wayland/wayland-client

USE_GMAKE ?=		yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

pre-configure:
	cd ${WRKSRC}; intltoolize --force

CONFIGURE_STYLE =	autoreconf



.include <bsd.port.mk>
