# $OpenBSD$

COMMENT =		OpenVAS security scanner manager
DISTNAME =		openvas-manager-2.0.4

MASTER_SITES =		${MASTER_SITES_OPENVAS:=871/}

WANTLIB +=		c pthread \
			e2fs-uuid glib-2.0 gnutls gpg-error gpgme sqlite3 \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp

BUILD_DEPENDS +=	devel/doxygen
RUN_DEPENDS +=		print/htmldoc
LIB_DEPENDS +=		security/openvas/libraries \
			sysutils/e2fsprogs \
			devel/glib2 \
			security/gnutls \
			security/libgpg-error \
			security/gpgme \
			databases/sqlite3

.include <bsd.port.mk>
