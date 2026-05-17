COMMENT=	hackable tiling window manager written in Python

MODPY_DISTV=	0.33.0
DISTNAME=	qtile-${MODPY_DISTV}
PKGNAME=	${DISTNAME}

CATEGORIES=	x11

HOMEPAGE=	https://qtile.org

MAINTAINER=	Emiel Kollof <emiel@kollof.nl>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PI_DIR=	q/qtile
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-cffi \
        devel/py-six \
        devel/py-cairocffi \
        x11/py-xcffib

RUN_DEPENDS=	x11/py-xcffib \
        devel/py-cairocffi \
        x11/py-dbus-next \
        sysutils/py-psutil \
        devel/py-xdg \
        devel/py-gobject3

LIB_DEPENDS=	devel/pango \
	devel/gobject-introspection \
	graphics/cairo \
	x11/gtk+2 

# uses dlopen() to load libraries
WANTLIB += gobject-2.0 pango-1.0 pangocairo-1.0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xsessions
	${INSTALL_DATA} ${FILESDIR}/qtile.desktop ${PREFIX}/share/xsessions

.include <bsd.port.mk>
