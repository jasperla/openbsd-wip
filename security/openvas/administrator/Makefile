# $OpenBSD$

COMMENT =		OpenVAS security scanner administrator
DISTNAME =		openvas-administrator-1.1.2

MASTER_SITES =		${MASTER_SITES_OPENVAS:=987/}

WANTLIB +=		c pthread\
			e2fs-uuid glib-2.0 gnutls gpg-error gpgme \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp

LIB_DEPENDS +=		sysutils/e2fsprogs \
			devel/glib2 \
			security/gnutls \
			security/libgpg-error \
			security/gpgme \
			security/openvas/libraries

.include <bsd.port.mk>
