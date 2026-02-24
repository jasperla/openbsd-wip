COMMENT=	replacement for xpyb, XCB python bindings

MODPY_DISTV=	1.9.0
DISTNAME=	xcffib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	x11

HOMEPAGE=	https://github.com/tych0/xcffib

MAINTAINER=	Emiel Kollof <emiel@kollof.nl>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PI_DIR =	x/xcffib

BUILD_DEPENDS=	devel/py-cffi \
        devel/py-six 

RUN_DEPENDS=	${BUILD_DEPENDS}


.include <bsd.port.mk>
