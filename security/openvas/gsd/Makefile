# $OpenBSD$

COMMENT =		greenbone security assistant desktop
DISTNAME =		gsd-1.2.2
PKGNAME =		openvas-${DISTNAME}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1084/}

WANTLIB +=		c m pthread stdc++ \
			assuan gcrypt glib-2.0 gthread-2.0 gnutls \
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
			security/libassuan \
			security/openvas/libraries

BUILD_DEPENDS +=	devel/doxygen

.include <bsd.port.mk>
