# $OpenBSD: Makefile,v 1.68 2018/03/15 15:59:19 rsadowski Exp $

COMMENT=	multiplatform vector graphics editor

VERSION=	2.0rc3
DISTNAME =	sk1-${VERSION}

CATEGORIES =	graphics

HOMEPAGE=	https://sk1project.net/

# GPL 3.0
PERMIT_PACKAGE_CDROM =  Yes
MASTER_SITES=	https://downloads.sk1project.net/sk1/${VERSION}/
EXTRACT_SUFX=	.tar.gz

MODULES=	lang/python
MODPY_SETUP=	setup-sk1.py

WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16 cairo fribidi glib-2.0
WANTLIB += gobject-2.0 intl lcms2 pango-1.0 pangocairo-1.0 pthread
WANTLIB += python2.7

BUILD_DEPENDS+=	graphics/py-cairo

LIB_DEPENDS+=	devel/pango \
		graphics/ImageMagick \
		graphics/cairo \
		graphics/lcms2

RUN_DEPENDS+=	devel/desktop-file-utils \
		graphics/py-Pillow \
		graphics/py-cairo \
		print/py-cups \
		print/py-reportlab \
		x11/py-wxPython \
		x11/wxWidgets

MAKE_ENV= APP_INSTALL_PATH=${MODPY_SITEPKG}

.include <bsd.port.mk>
