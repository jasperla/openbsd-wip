# $OpenBSD$

COMMENT =		OpenVAS security scanner manager
DISTNAME =		openvas-manager-3.0.3

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1160/}

WANTLIB +=		c pthread \
			assuan e2fs-uuid glib-2.0 gnutls gpg-error gpgme sqlite3 \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp

BUILD_DEPENDS +=	devel/doxygen
RUN_DEPENDS +=		print/htmldoc
LIB_DEPENDS +=		security/openvas/libraries \
			sysutils/e2fsprogs \
			devel/glib2 \
			security/gnutls \
			security/libassuan \
			security/libgpg-error \
			security/gpgme

.include <bsd.port.mk>
