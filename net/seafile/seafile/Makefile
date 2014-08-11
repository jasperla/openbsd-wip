# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT-main =		seafile daemon
COMMENT-server = 	seafile server

GH_PROJECT =		seafile
PKGNAME-main = 		${GH_PROJECT}-daemon-${V}
PKGNAME-server = 	${GH_PROJECT}-server-${V}

SHARED_LIBS =		seafile 0.0

cWANTLIB += c ccnet event_core crypto ffi gio-2.0 glib-2.0 gmodule-2.0
cWANTLIB += gobject-2.0 jansson pcre pthread searpc sqlite3 ssl uuid
cWANTLIB += z zdb ${MODGETTEXT_WANTLIB}

WANTLIB-main += lib/inotify/inotify ${cWANTLIB}

WANTLIB-server += archive bz2 event_openssl event_pthreads evhtp expat lzma
WANTLIB-server += onig seafile ${cWANTLIB}

MODULES =		devel/gettext lang/python
BUILD_DEPENDS =		devel/libtool \
			lang/vala
RUN_DEPENDS-main =	devel/py-simplejson
LIB_DEPENDS-main =	devel/libinotify \
			net/seafile/ccnet
LIB_DEPENDS-server = 	archivers/libarchive \
			archivers/xz \
			databases/libzdb \
			devel/libevhtp \
			net/seafile/seafile,-main
RUN_DEPENDS-server = 	devel/py-simplejson \
			graphics/py-Pillow
#			www/py-djblets

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-fuse \
			--enable-server
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/inotify" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/inotify"

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

MULTI_PACKAGES = 	-main -server

MODPY_ADJ_FILES = 	scripts/*.py scripts/build/*.py scripts/upgrade/*.py \
			tests/test-share.py tests/test-transfer.py \
			tools/seafile-admin app/seaf-cli

SUBST_VARS += 		VARBASE

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -fi
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/seafile/
	${INSTALL_DATA} ${FILESDIR}/seafile.conf \
		${PREFIX}/share/examples/seafile/

.include <bsd.port.mk>
