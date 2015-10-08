# $OpenBSD:$

COMMENT =		Virtual Private Network (VPN) daemon
DISTNAME =		tinc-1.0.26
CATEGORIES =		net security

HOMEPAGE =		http://www.tinc-vpn.org/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto lzo2 z

MASTER_SITES =		http://www.tinc-vpn.org/packages/

MODULES =		converters/libiconv \

LIB_DEPENDS +=		archivers/lzo2 \

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu

CONFIGURE_STYLE = gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS = --sysconfdir=/etc \
		 --prefix=${LOCALBASE} \


.include <bsd.port.mk>
