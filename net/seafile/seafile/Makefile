# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT-main =		seafile daemon
COMMENT-server = 	seafile server

NAME =			seafile
PKGNAME-main = 		seafile-daemon-${V}
PKGNAME-server = 	seafile-server-${V}

SHARED_LIBS =		seafile 0.0

WANTLIB += c ccnet event_core crypto ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += inotify jansson pcre pthread searpc sqlite3 ssl uuid z zdb

WANTLIB-main += ${MODGETTEXT_WANTLIB} ${WANTLIB}

WANTLIB-server += archive bz2 event_openssl event_pthreads evhtp expat lzma
WANTLIB-server += onig seafile ${WANTLIB}

MODULES =		devel/gettext lang/python
BUILD_DEPENDS =		devel/libtool \
			lang/vala
RUN_DEPENDS-main =	devel/desktop-file-utils \
			devel/py-simplejson \
			x11/gtk+2,-guic
LIB_DEPENDS-main =	devel/libinotify \
			net/seafile/ccnet
LIB_DEPENDS-server = 	archivers/libarchive \
			archivers/xz \
			databases/libzdb \
			devel/libevhtp \
			net/seafile/seafile,-main \
			${LIB_DEPENDS-main}
RUN_DEPENDS-server = 	devel/py-simplejson \
			graphics/py-Pillow
#			www/py-djblets

USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake
CONFIGURE_ARGS +=	--disable-fuse \
			--enable-server
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -linotify"

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

MULTI_PACKAGES = 	-main -server

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
