# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	modern asynchronous DNS API

V =		1.3.0
DISTNAME =	getdns-${V}

SHARED_LIBS +=	getdns	0.0	# 9.0

CATEGORIES =	net

HOMEPAGE =	https://www.getdnsapi.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.getdnsapi.net/releases/getdns-${V:S/./-/g}/

LIB_DEPENDS =	devel/libidn

WANTLIB +=	c crypto iconv idn intl pthread ssl

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --enable-stub-only

NO_TEST =	Yes

.include <bsd.port.mk>
