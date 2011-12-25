# $OpenBSD: Makefile.template,v 1.49 2006/10/21 12:59:35 espie Exp $

COMMENT =		USB BlackBerry upload/download

V=				0.14
DISTNAME=		barry-${V}
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=barry/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	barry ${V}

CATEGORIES=		comms

HOMEPAGE=		http://www.netdirect.ca/software/packages/barry/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		usb pthread stdc++ m c

LIB_DEPENDS=	devel/boost \
				devel/libusb

CONFIGURE_STYLE=	gnu
# OPENSSL_CFLAGS must be non-empty to work around "test -n" in configure
CONFIGURE_ENV=		OPENSSL_CFLAGS=" " OPENSSL_LIBS="-lssl -lcrypto"
USE_GMAKE=		Yes
USE_LIBTOOL=	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
