# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	automatic updates for GeoIP and GeoIP2 binary databases

V =		2.2.2
DISTNAME =	geoipupdate-${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/maxmind/geoipupdate

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto curl iconv idn intl nghttp2 ssl z

MASTER_SITES =	${HOMEPAGE}/releases/download/v${V}/

LIB_DEPENDS =	net/curl

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/geoipupdate

post-install:
	${SUBST_CMD} ${PREFIX}/share/examples/geoipupdate/GeoIP.conf
	rm ${PREFIX}/share/examples/geoipupdate/GeoIP.conf.beforesubst

.include <bsd.port.mk>
