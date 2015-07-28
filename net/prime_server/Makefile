# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		non-blocking server API for distributed computing

DISTNAME =		prime_server-0.0.0

SHARED_LIBS +=  prime_server              0.0 # 0.0

CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv idn intl m pthread sodium ssl z
WANTLIB += zmq

GH_ACCOUNT =		kevinkreiser
GH_PROJECT =		prime_server
GH_COMMIT =		1d25236196ae25614f6129aa4ce75ec43837ea83

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		net/curl \
			net/zeromq

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu

# for gnu stuff
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-extract:
	cp ${FILESDIR}/logging.hpp ${WRKDIST}/prime_server/logging/
	cp ${FILESDIR}/testing.hpp ${WRKDIST}/testing/

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh

.include <bsd.port.mk>
