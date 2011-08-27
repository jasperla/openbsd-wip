# $OpenBSD$

COMMENT =		greenbone security assistant
VERSION =		2.0.1
DISTNAME =		greenbone-security-assistant-${VERSION}
PKGNAME =		openvas-gsa-${VERSION}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=857/}

WANTLIB +=		c m pthread z \
			exslt gcrypt glib-2.0 gthread-2.0 gnutls gpg-error \
			gpgme microhttpd tasn1 xml2 xslt \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			security/gnutls \
			security/libgpg-error \
			security/gpgme \
			www/libmicrohttpd \
			security/openvas/libraries \
			textproc/libxml \
			textproc/libxslt

.include <bsd.port.mk>
