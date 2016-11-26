# $OpenBSD: $

COMMENT =	Library for processing of keyboard entry from terminal
DISTNAME =	libtermkey-0.18

SHARED_LIBS =  termkey                   0.0 # 13.0

CATEGORIES =	devel

HOMEPAGE =	http://www.leonerd.org.uk/code/libtermkey/

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += unibilium

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS =	devel/unibilium

USE_GMAKE =	Yes
#USE_LIBTOOL=	gnu

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

.include <bsd.port.mk>
