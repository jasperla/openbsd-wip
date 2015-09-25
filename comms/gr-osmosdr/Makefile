# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:11 ajacoutot Exp $

COMMENT=	

DISTNAME=	gr-osmosdr-0.1.4

SHARED_LIBS +=	gnuradio-osmosdr          0.0 # 0.1

CATEGORIES=	comms

HOMEPAGE=	http://sdr.osmocom.org/trac/wiki/GrOsmoSDR

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://cgit.osmocom.org/gr-osmosdr/snapshot/

WANTLIB += m pthread stdc++

MODULES=	devel/cmake

USE_NINJA=	No

CONFIGURE_STYLE= cmake

NO_TEST=	Yes

.include <bsd.port.mk>
