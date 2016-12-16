# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		non-blocking server API for distributed computing

V =			0.4.0
DISTNAME =		prime_server-$V

SHARED_LIBS +=  prime_server              0.0 # 0.0

CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl m nghttp2 pthread sodium ssl z
WANTLIB += zmq

GH_ACCOUNT =		kevinkreiser
GH_PROJECT =		prime_server
GH_TAGNAME =		$V

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		net/curl \
			net/zeromq

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-extract:
	cp ${FILESDIR}/logging.hpp ${WRKDIST}/prime_server/logging/
#	cp ${FILESDIR}/testing.hpp ${WRKDIST}/testing/

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh

.include <bsd.port.mk>
