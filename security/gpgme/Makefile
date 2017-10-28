# $OpenBSD: Makefile,v 1.38 2017/05/11 00:29:50 espie Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.9.0
CATEGORIES=		security devel

SHARED_LIBS +=  gpgme                20.0     # 25.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan c gpg-error iconv intl pthread

MASTER_SITES=		${MASTER_SITE_GNUPG:=gpgme/}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--enable-languages=''

# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS=		gnupg->=2:security/gnupg2
# gnupg-* is normally the default anyway, but gnupg1 overrides PKGSPEC
# so we must be explicit here.
RUN_DEPENDS=		gnupg-*:security/gnupg
LIB_DEPENDS=		devel/gettext \
			security/libgpg-error>=1.4 \
			security/libassuan

# XXX needed?
TEST_DEPENDS +=		security/gnupg2

# needed for the regression tests
USE_GMAKE=		Yes

# XXX needed?
pre-test:
	ln -sf ${LOCALBASE}/bin/gpg2 ${WRKDIR}/bin/gpg

.include <bsd.port.mk>
