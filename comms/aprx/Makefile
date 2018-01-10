# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:11 ajacoutot Exp $

COMMENT=	aprs igate/digipeater application

DISTNAME=	aprx-2.08.svn593
PKGNAME=	aprx-2.08

CATEGORIES=	comms

HOMEPAGE=	http://ham.zmailer.org/oh2mqk/aprx/

# BSD?
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += c m pthread util

CONFIGURE_STYLE=	simple
MAKE_ENV=		DESTDIR=${DESTDIR} \
			PREFIX=${DESTDIR}/${PREFIX} \
			SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man
USE_GMAKE=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
