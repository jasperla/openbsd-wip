# $OpenBSD: mk.conf.template,v 1.23 2016/04/26 10:57:00 sthen Exp $

COMMENT =	lightweight authoritative name server

V =		2.2.1
DISTNAME =	yadifa-${V}-6281
PKGNAME =	${DISTNAME:S/-6281//}
SHARED_LIBS +=	dnscore		0.0	# 3.0
SHARED_LIBS +=	dnsdb		0.0	# 3.0
SHARED_LIBS +=	dnslg		0.0	# 2.0
SHARED_LIBS +=	dnszone		0.0	# 2.0

CATEGORIES =	net

HOMEPAGE =	http://www.yadifa.eu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto pcap pthread ssl z

MASTER_SITES =	http://cdn.yadifa.eu/sites/default/files/releases/

CONFIGURE_STYLE = gnu

NO_TEST =	Yes

.include <bsd.port.mk>
