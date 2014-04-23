# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		simple RPC framework based on GObject system

NAME = 			libsearpc

SHARED_LIBS += 		searpc			0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 jansson pcre pthread

MODULES =		devel/gettext \
			lang/python
BUILD_DEPENDS = 	devel/libtool
LIB_DEPENDS =		devel/glib2 \
			devel/jansson

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

MODPY_ADJ_FILES = 	lib/searpc-codegen.py pysearpc/pygencode.py

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf --install

.include <bsd.port.mk>
