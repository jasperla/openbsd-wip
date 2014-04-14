# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		seafile

NAME =			seafile

SHARED_LIBS =		seafile 0.0

WANTLIB += c ccnet crypto event_core ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv inotify intl jansson
WANTLIB += pcre pthread searpc sqlite3 ssl uuid z

MODULES =		lang/python
BUILD_DEPENDS =		devel/libtool \
			lang/vala
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-simplejson \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/libinotify \
			net/seafile/ccnet

USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake
CONFIGURE_ARGS +=	--disable-fuse \
			--disable-server
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -linotify"

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

MODPY_ADJ_FILES = 	scripts/*.py scripts/build/*.py scripts/upgrade/*.py \
			tests/test-share.py tests/test-transfer.py \
			tools/seafile-admin app/seaf-cli

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} libtoolize --force --copy
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal --force
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader -f
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf -f

.include <bsd.port.mk>
