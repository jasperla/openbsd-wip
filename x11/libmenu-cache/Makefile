# $OpenBSD: Makefile,v 1.20 2010/11/22 08:37:03 espie Exp $

COMMENT=	menu cache generation for pcmanfm

DISTNAME=	menu-cache-0.3.3
PKGNAME=	libmenu-cache-0.3.3

CATEGORIES=	x11

HOMEPAGE=	http://www.lxde.org/

SHARED_LIBS=	menu-cache	0.0 # 1.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxde/}

WANTLIB=	c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		pcre pthread z

LIB_DEPENDS=	devel/glib2

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
