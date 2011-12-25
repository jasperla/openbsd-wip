# $OpenBSD: Makefile,v 1.7 2011/06/07 20:57:45 Exp $

COMMENT=	an OpenPGP key archiver

DISTNAME=	paperkey-1.2
CATEGORIES=	security

HOMEPAGE=	http://www.jabberwocky.com/software/paperkey/
MAINTAINER=	Sergey Bronnikov <estetus@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

FAKE_FLAGS=	PREFIX=${PREFIX}
NO_REGRESS=	Yes

MASTER_SITES=   ${HOMEPAGE}

CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
