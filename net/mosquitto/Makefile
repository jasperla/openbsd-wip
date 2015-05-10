# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		opensource MQTT broker
DISTNAME =		mosquitto-1.4.2

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4


CATEGORIES =		net
HOMEPAGE =		http://mosquitto.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m pthread ssl stdc++ uuid

# No EPROTO in OpenBSD.
CFLAGS +=		-DEPROTO=ECONNABORTED \
			-I${LOCALBASE}/include
MASTER_SITES =		http://mosquitto.org/files/source/

MODULES =		devel/cmake

USE_GMAKE = 		Yes

# undefined reference to `SSL_CTX_set_psk_client_callback'
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

# XXX would like to remove the need for the patch and this subst.
#CONFIGURE_ARGS +=	-DCMAKE_LIBRARY_PATH=${LOCALBASE}/lib
# ^^^ should work, but does not
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/CMakeLists.txt

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		sysutils/e2fsprogs
#TEST_DEPENDS =		???

#NO_TEST =		Yes

.include <bsd.port.mk>
