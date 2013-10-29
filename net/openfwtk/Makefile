# $OpenBSD$

COMMENT=        application proxy toolkit
DISTNAME=       openfwtk-2.1pre10

CATEGORIES=		security net

HOMEPAGE=               http://openfwtk.sourceforge.net/

MAINTAINER=		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openfwtk/}

#PREFIX=/usr/local

FAKE_FLAGS=     PREFIX="${PREFIX}"
#FAKE_FLAGS=     PREFIX="${PREFIX}" MANDIR="${PREFIX}/man"

.include <bsd.port.mk>
