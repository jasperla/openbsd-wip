# $OpenBSD $

COMMENT=	syncevolution

V= 			1.1
DISTNAME=	syncevolution-${V}
CATEGORIES=	comms misc

HOMEPAGE=	http://syncevolution.org
MAINTAINER=	Sergey Bronnikov <estetus@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= c
LIBS+=-ldl -pthread

CONFIGURE_ARGS= --disable-ebook \
				--disable-ecal

#CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_STYLE=gnu
USE_GMAKE= yes

MASTER_SITES= http://downloads.syncevolution.org/syncevolution/sources/

FAKE_FLAGS=	PREFIX=${PREFIX}
NO_REGRESS=	Yes

.include <bsd.port.mk>
