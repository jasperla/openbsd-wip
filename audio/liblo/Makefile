# $OpenBSD$

COMMENT =	Lightweight Open Sound Control implementation
DISTNAME =	liblo-0.31

SHARED_LIBS +=	lo                        0.0 # 11.1

CATEGORIES =	audio
HOMEPAGE =	http://liblo.sourceforge.net/
MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# LGPL 2.1 or greater
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=liblo/}
CONFIGURE_STYLE =	autoconf

.include <bsd.port.mk>
