# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		opensource MQTT broker
DISTNAME =		mosquitto-1.4.2

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4

CATEGORIES =		net
HOMEPAGE =		http://mosquitto.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m pthread ssl stdc++ uuid

# No EPROTO in OpenBSD.
CFLAGS +=		-DEPROTO=ECONNABORTED \
			-I${LOCALBASE}/include
MASTER_SITES =		http://mosquitto.org/files/source/

MODULES =		devel/cmake
#USE_GMAKE = 		Yes

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

post-install:
	mv ${PREFIX}/etc/mosquitto ${PREFIX}/share/examples/mosquitto
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/mosquitto
	rmdir ${PREFIX}/etc

LIB_DEPENDS =		sysutils/e2fsprogs
NO_TEST =		Yes

.include <bsd.port.mk>
