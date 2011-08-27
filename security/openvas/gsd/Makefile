# $OpenBSD$

COMMENT =		greenbone security assistant desktop
DISTNAME =		gsd-1.2.0
PKGNAME =		openvas-${DISTNAME}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=861/}

WANTLIB +=		c m pthread stdc++ \
			gcrypt glib-2.0 gthread-2.0 gnutls tasn1 \
			gpg-error gpgme \
			openvas_base openvas_hg openvas_misc openvas_nasl \
			openvas_omp \
			QtCore QtGui QtXml QtNetwork QtWebKit QtXmlPatterns

LIB_DEPENDS +=		x11/qt4 \
			security/libgcrypt \
			devel/glib2 \
			security/gnutls \
			security/libgpg-error \
			security/gpgme \
			security/openvas/libraries

BUILD_DEPENDS +=	devel/doxygen

.include <bsd.port.mk>
