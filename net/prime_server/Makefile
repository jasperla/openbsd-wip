# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		non-blocking server API for distributed computing

V =			0.6.3
DISTNAME =		prime_server-$V

SHARED_LIBS +=  prime_server              0.0 # 0.0

CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c czmq crypto curl m nghttp2 pthread sodium ssl z
WANTLIB += zmq

GH_ACCOUNT =	kevinkreiser
GH_PROJECT =	prime_server
GH_TAGNAME =	$V

TESTING =	1c45352fa2c4e25a748cf1221b93a9aed4dbc34c
LOGGING =	c5b9b40d1e47cd190d78582993fd07e4478540af
MASTER_SITES0 =	https://gist.githubusercontent.com/kevinkreiser/ada902fb51a1ad1e5a27/raw/${TESTING}/
MASTER_SITES1 =	https://gist.githubusercontent.com/kevinkreiser/39f2e39273c625d96790/raw/${LOGGING}/

EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
			testing-${TESTING}{testing}.hpp:0 \
			logging-${LOGGING}{logging}.hpp:1
DIST_SUBDIR =		prime_server

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		net/curl \
			net/czmq \
			net/zeromq

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-extract:
	cp ${FULLDISTDIR}/logging-*.hpp ${WRKDIST}/prime_server/logging/logging.hpp
	cp ${FULLDISTDIR}/testing-*.hpp ${WRKDIST}/test/testing/testing.hpp

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh

.include <bsd.port.mk>
