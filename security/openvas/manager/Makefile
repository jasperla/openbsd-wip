# $OpenBSD$

COMMENT =		OpenVAS security scanner manager
DISTNAME =		openvas-manager-5.0.4

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1730/}

WANTLIB +=		c m pthread \
			assuan glib-2.0 gnutls gpg-error gpgme sqlite3 \
			openvas_base openvas_misc openvas_nasl openvas_omp

BUILD_DEPENDS +=	devel/doxygen
RUN_DEPENDS +=		print/htmldoc \
			net/rsync

LIB_DEPENDS +=		security/openvas/libraries \
			devel/glib2 \
			security/gnutls \
			security/libassuan \
			security/libgpg-error \
			security/gpgme

# patch can't handle training binary....
post-patch:
			perl -i -pe 's/tty -s/test -t 0/g' ${WRKSRC}/tools/openvas-lsc-rpm-creator.sh

.include <bsd.port.mk>
