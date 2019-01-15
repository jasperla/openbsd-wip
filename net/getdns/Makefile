# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	modern asynchronous DNS API

V =		1.5.1
DISTNAME =	getdns-${V}

SHARED_LIBS +=	getdns	0.0	# 11.1

CATEGORIES =	net

HOMEPAGE =	https://www.getdnsapi.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.getdnsapi.net/releases/getdns-${V:S/./-/g}/

LIB_DEPENDS =	devel/libidn2 \
		net/libunbound

TEST_DEPENDS =	devel/check

WANTLIB +=	c crypto event iconv idn2 pthread ssl unbound unistring

CONFIGURE_STYLE = gnu

TEST_TARGET =	test

.include <bsd.port.mk>
