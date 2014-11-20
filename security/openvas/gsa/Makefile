# $OpenBSD$

COMMENT =		greenbone security assistant
VERSION =		5.0.4
DISTNAME =		greenbone-security-assistant-${VERSION}
PKGNAME =		openvas-gsa-${VERSION}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1799/}

WANTLIB +=		c m pthread z \
			assuan exslt gcrypt glib-2.0 gnutls gpg-error \
			gpgme microhttpd xml2 xslt \
			openvas_base openvas_misc openvas_nasl openvas_omp

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			security/gnutls \
			security/libassuan \
			security/libgpg-error \
			security/gpgme \
			www/libmicrohttpd \
			security/openvas/libraries \
			textproc/libxml \
			textproc/libxslt

BUILD_DEPENDS +=	converters/xmltoman \
			devel/doxygen

SEPARATE_BUILD = 	No

.include <bsd.port.mk>
