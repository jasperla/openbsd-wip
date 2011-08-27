# $OpenBSD$

COMMENT =		OpenVAS security scanner cli
DISTNAME =		openvas-cli-1.1.2
# PKGNAME =		${DISTNAME}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=851/}

WANTLIB +=		c \
			glib-2.0 gnutls gpgme gpg-error \
			openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp


RUN_DEPENDS +=		print/htmldoc
LIB_DEPENDS +=		security/openvas/libraries \
			devel/glib2 \
			security/gnutls \
			security/gpgme \
			security/libgpg-error

.include <bsd.port.mk>
