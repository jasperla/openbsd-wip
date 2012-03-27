# $OpenBSD$

COMMENT =		OpenVAS security scanner administrator
DISTNAME =		openvas-administrator-1.2.0

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1065/}

WANTLIB +=		c pthread \
			assuan e2fs-uuid glib-2.0 gnutls gpg-error gpgme \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp

LIB_DEPENDS +=		sysutils/e2fsprogs \
			devel/glib2 \
			security/gnutls \
			security/libassuan \
			security/libgpg-error \
			security/gpgme \
			security/openvas/libraries

BUILD_DEPENDS =		devel/doxygen,-main \
			converters/xmltoman

.include <bsd.port.mk>
